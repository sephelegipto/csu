<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\Curriculum;

class CurriculumController extends Controller
{
    public function getData()
	{
		return DB::table('curriculums')
            ->leftJoin('courses', 'courses.course_id', '=', 'curriculums.course_id')
            ->select('curriculums.*', 'courses.name as course_name')
            ->orderby('name')
            ->get();
	}

	public function store(Request $request)
	{
		$course_id = DB::table('courses')->where('name', $request->course_name)->value('course_id');
		$id = DB::table('curriculums')->insertGetId(
			['year' => $request->name, 'course_id' => $course_id]
		);

		return DB::table('curriculums')
            ->leftJoin('courses', 'courses.course_id', '=', 'curriculums.course_id')
            ->select('curriculums.*', 'courses.name as course_name')
            ->where('curriculum_id', $id)
            ->get();

	}

	public function destroy(Curriculum $curriculum)
    {

    	
    	Curriculum::where('curriculum_id', $curriculum->curriculum_id)->delete();
    }

    public function update(Request $request)
    {
    	$course_id = DB::table('courses')->where('name', $request->course_name)->value('course_id');

    	$cur = Curriculum::find($request->curriculum_id);
    	$cur->year = $request->year; 	
    	$cur->course_id = $course_id;
    	$cur->save();

    }
}
