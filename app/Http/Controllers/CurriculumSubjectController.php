<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\CurriculumSubject;

class CurriculumSubjectController extends Controller
{
 public function getData(Request $request)
 {
  return DB::table('curriculumsubjects')
  ->join('subjects', 'curriculumsubjects.subject_id', '=', 'subjects.subject_id')

  ->select('curriculumsubjects.*', 'subjects.*')
  ->where('curriculumsubjects.curriculum_id', $request->id)
  ->where('identifier', '!=', '1')
  ->get();
}
public function getDataSubjects(Request $request)
{
  $temptable = DB::raw("(SELECT * 
    FROM curriculumsubjects WHERE curriculum_id = $request->id) as cursub");
    
return DB::table('subjects')

  ->leftJoin($temptable, 'cursub.subject_id', '=', 'subjects.subject_id') 
  ->select('subjects.*', 'cursub.*','subjects.subject_id as subject_id')
  ->where('cursub.subject_id', null)
  ->orWhere('cursub.identifier', 1)
  ->get();

}

public function store(Request $request)
{
  $curriculumsubject_id = DB::table('CurriculumSubjects')    
  ->where('curriculum_id', $request->curriculum_id)
  ->where('subject_id', $request->subject_id)
  ->value('curriculumsubject_id');



  if ($curriculumsubject_id > 1){

    DB::table('CurriculumSubjects')
    ->where('curriculumsubject_id', $curriculumsubject_id)
    ->update(['identifier' => 0, 'prerequisite' => $request->prerequisite,
      'lec_hours' => $request->lec_hours, 'lab_hours' => $request->lab_hours, 
      'contact_hours' => $request->contact_hours, 'lec_units' => $request->lec_units,
      'lab_units' => $request->lab_units
    ]);
    
    
    return DB::table('curriculumsubjects')
    ->join('subjects', 'curriculumsubjects.subject_id', '=', 'subjects.subject_id')
    ->select('curriculumsubjects.*', 'subjects.*')
    ->where('curriculumsubjects.curriculumsubject_id', $curriculumsubject_id)        
    ->get();
  }
  else {

    $id = DB::table('curriculumsubjects')->insertGetId(
      ['curriculum_id' => $request->curriculum_id, 'year' => $request->year,
      'sem' => $request->sem, 'subject_id' => $request->subject_id,
      'identifier' => 0, 'lec_hours' => $request->lec_hours,
      'prerequisite' => $request->prerequisite, 'lab_hours' => $request->lec_hours, 'lab_hours' => $request->lab_hours, 'contact_hours' => $request->contact_hours]
    );
    return DB::table('curriculumsubjects')
    ->join('subjects', 'curriculumsubjects.subject_id', '=', 'subjects.subject_id')
    ->select('curriculumsubjects.*', 'subjects.*')
    ->where('curriculumsubjects.curriculumsubject_id', $id)        
    ->get();


  }

}

public function destroy(CurriculumSubject $curriculumsubject)
{

   // 	return DB::table('curriculumsubjects')->where('curriculumsubject_id', $curriculumsubject->curriculumsubject_id)->delete();

  $cursub = CurriculumSubject::find($curriculumsubject->curriculumsubject_id);
  $cursub->identifier = 1;
  $cursub->save();
}

public function update(Request $request)
{
 $course_id = DB::table('courses')->where('name', $request->course_name)->value('course_id');

 $sub = CurriculumSubject::find($request->curriculumsubject_id); 
 $sub->prerequisite = $request->prerequisite;

 $sub->lec_hours = $request->lec_hours;
 $sub->lab_hours = $request->lab_hours;
 $sub->contact_hours = $request->contact_hours; 	
  $sub->lec_units = $request->lec_units;
 $sub->lab_units = $request->lab_units;
 $sub->save();

}
}
