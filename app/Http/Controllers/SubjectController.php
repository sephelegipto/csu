<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\Subject;

class SubjectController extends Controller
{
    public function getData()
    {
      return DB::table('subjects')
      ->orderby('subject_id')
      ->get();
  }

  public function store(Request $request)
  {

      $id = DB::table('subjects')->insertGetId(
       ['subject_code' => $request->subject_code, 'descriptive_title' => $request->descriptive_title,
       'prerequisite' => $request->prerequisite, 'units' => $request->units,
       'lec_hours' => $request->lec_hours, 'lab_hours' => $request->lab_hours,
       'contact_hours' => $request->contact_hours]
   );

      return DB::table('subjects')
      ->where('subject_id', $id)
      ->get();

  }

  public function destroy(Subject $subject)
  {


     Subject::where('subject_id', $subject->subject_id)->delete();
 }

 public function update(Request $request)
 {

     $sub = Subject::find($request->subject_id);
     $sub->subject_code = $request->subject_code; 
     $sub->descriptive_title = $request->descriptive_title;  
     $sub->prerequisite = $request->prerequisite;
     $sub->units = $request->units;
     $sub->lec_hours = $request->lec_hours;
     $sub->lab_hours = $request->lab_hours;
     $sub->contact_hours = $request->contact_hours; 	
     $sub->save();

 }
}
