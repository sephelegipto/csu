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
    ->orderby('subject_id', 'desc')
    ->get();
  }

  public function store(Request $request)
  {

    $id = DB::table('subjects')->insertGetId(
     ['subject_code' => $request->subject_code, 'descriptive_title' => $request->descriptive_title, 'units' => $request->units]
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
   $sub->units = $request->units; 
   $sub->save();

 }
}
