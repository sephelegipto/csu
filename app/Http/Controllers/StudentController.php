<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\User;
use Auth;
class StudentController extends Controller
{
	public function getData()
	{
		return  DB::table('users')
		->join('courses', 'courses.course_id', '=', 'courses.course_id')
		->join('departments', 'departments.department_id', '=', 'courses.department_id')
		->select('courses.*', 'courses.*', 'users.*', 'departments.abbre as dept_name')
		->where('role_id', 2)
		->get();
	}

	public function getStudentChecklist(Request $request){
		$curriculum_id = Auth::user()->curriculum_id;

		$collection = DB::table('curriculumsubjects')
		->leftJoin('studentchecklists', 'curriculumsubjects.curriculumsubject_id', '=', 'studentchecklists.curriculumsubject_id')
		->join('subjects', 'curriculumsubjects.subject_id', '=', 'subjects.subject_id')

		->select('curriculumsubjects.*','studentchecklists.grade as grade', 'subjects.*')
		
		->where('studentchecklists.user_id', $request->id)

		->orWhere('curriculumsubjects.curriculum_id', $curriculum_id)
		->where('curriculumsubjects.identifier', '!=' , 1)
		->get();

		$unique = $collection->unique('subject_code');
		return $unique;

	}

	public function updateGrade(Request $request)
	{
		
		$result = DB::table('studentchecklists')
		->where('curriculumsubject_id', $request->data)
		->where('user_id', $request->user_id)
		->where('identifier', '!=', '0')
		->get();

		if($result->count() > 0){
			DB::table('studentchecklists')
			->where('curriculumsubject_id', $request->data)
			->where('user_id', $request->user_id)
			->update(['grade' => $request->grade]);
		} else {
			DB::table('studentchecklists')->insertGetId(
				[ 'user_id' => $request->user_id, 
				'curriculumsubject_id' => $request->data,
				'grade' => $request->grade]
			);
		}

	}

	public function store(Request $request)
	{
		$user_id = Auth::user()->id;

		$latestCurriculum = DB::table('curriculums')
		->where('course_id', $request->course_id)
		->orderBy('curriculum_id', 'desc')
		->first();
		
		$id = DB::table('users')->insertGetId(
			['role_id' => 2, 'school_id' => strtoupper($request->school_id), 
			'f_name' => ucfirst($request->f_name), 'l_name' => ucfirst($request->l_name),
			'm_name' => ucfirst($request->m_name), 'course_id' => $request->course_id,
			'email' => $request->email, 'password' => bcrypt('secret'), 
			'curriculum_id' => $latestCurriculum->curriculum_id]
		);

		$subjects = DB::table('curriculumsubjects')
		->where('curriculumsubjects.curriculum_id', $latestCurriculum->curriculum_id)
		->get();




		foreach ($subjects as $subject) 
		{
			$subject     = get_object_vars($subject);

			DB::table('studentchecklists')->insert(
				['user_id' => $id, 
				'curriculumsubject_id' => $subject['curriculumsubject_id']]
			);
		}


		return DB::table('users')
		->join('courses', 'users.course_id', '=', 'courses.course_id')
		->select('users.*', 'courses.*')
		->where('id', $id)
		->get();
	}

	public function destroy(User $student)
	{


		User::where('id', $student->id)->delete();
	}

	public function update(Request $request)
	{
		

		$user = User::find($request->id);
		$user->school_id = strtoupper($request->school_id);    	 
		$user->f_name = ucfirst($request->f_name); 
		$user->m_name = ucfirst($request->m_name); 
		$user->l_name = ucfirst($request->l_name); 
		$user->course_id = $request->course_id; 
		$user->email = $request->email; 
		$user->save();

	}
}
