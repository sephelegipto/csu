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
		$temptable = DB::raw("(SELECT * 
			FROM curriculumsubjects WHERE curriculum_id = $request->curriculum_id) as cursub");

		return DB::table('studentchecklists')

		->leftJoin($temptable, 'cursub.curriculumsubject_id', '=', 'studentchecklists.curriculumsubject_id')
		->join('subjects', 'subjects.subject_id', '=', 'cursub.subject_id') 
		->select('subjects.*', 'cursub.*','subjects.subject_id as subject_id', 'studentchecklists.*')
		->where('studentchecklists.user_id', $request->id)
		->orWhere('cursub.subject_id', null)

	
		->get();

	}

	public function getStudentChecklistForStudentPage(){
		$curriculum_id = Auth::user()->curriculum_id;
		$user_id = Auth::user()->id;

		$temptable = DB::raw("(SELECT * 
			FROM curriculumsubjects WHERE curriculum_id = $curriculum_id) as cursub");

		return DB::table('studentchecklists')

		->leftJoin($temptable, 'cursub.curriculumsubject_id', '=', 'studentchecklists.curriculumsubject_id')
		->join('subjects', 'subjects.subject_id', '=', 'cursub.subject_id') 
		->select('subjects.*', 'cursub.*','subjects.subject_id as subject_id', 'studentchecklists.*')
		->where('studentchecklists.user_id', $user_id)
		->orWhere('cursub.subject_id', null)	
		->get();



	}

	public function studPageStudDetail()
	{
		return Auth::user()->l_name . ', ' . Auth::user()->f_name . ' ' . Auth::user()->m_name ;
	}

	public function updateGrade(Request $request)
	{
		
		$result = DB::table('studentchecklists')
		->where('curriculumsubject_id', $request->curriculumsubject_id)
		->where('user_id', $request->user_id)
		->get();

		if($result->count() > 0){
			DB::table('studentchecklists')
			->where('curriculumsubject_id', $request->curriculumsubject_id)
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
