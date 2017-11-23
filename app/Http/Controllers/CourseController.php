<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\Course;
use App\Department;

class CourseController extends Controller
{
    public function getData()
	{
		return $users = DB::table('courses')
            ->leftJoin('departments', 'departments.department_id', '=', 'courses.department_id')
            ->select('courses.name as course_name', 'courses.course_id as course_id', 'departments.name', 'departments.abbre as dept_name', 'courses.department_id as department_id', 'courses.abbre as abbre')
            ->get();
	}

	public function store(Request $request)
	{
		
		$id = DB::table('courses')->insertGetId(
			['department_id' => $request->department_id, 'name' => $request->course_name,
            'abbre' => $request->abbre]
		);

		return DB::table('courses')
            ->leftJoin('departments', 'departments.department_id', '=', 'courses.department_id')
            ->select('courses.name as course_name', 'courses.course_id as course_id', 'departments.name', 'departments.abbre as dept_name', 'courses.department_id as department_id', 'courses.abbre as abbre')
            ->where('course_id', $id)
            ->get();
	}

	public function destroy(Course $course)
    {

    	
    	Course::where('course_id', $course->course_id)->delete();
    }

    public function update(Request $request)
    {
    	$dept_id = DB::table('departments')->where('abbre', $request->dept_name)->value('department_id');

    	$course = Course::find($request->course_id);
    	$course->name = $request->course_name; 
    	$course->department_id = $dept_id;   
        $course->abbre = $request->abbre;	
    	$course->save();

    }
}
