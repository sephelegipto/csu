<?php

namespace App\Http\Controllers;
use DB;
use Auth;
use Illuminate\Http\Request;

class AdminController extends Controller
{

    public function __construct()
    {
    	$this->middleware('web');
    }

    public function dashboard()
    {
    	return view('dashboard');
    }

    public function getAuth()
    {
    	return Auth::user();	
    }

    	public function student()
	{
		$curriculum_id = Auth::user()->curriculum_id;
		$id = Auth::user()->user_id;
		$collection = DB::table('curriculumsubjects')
		->leftJoin('studentchecklists', 'curriculumsubjects.curriculumsubject_id', '=', 'studentchecklists.curriculumsubject_id')
		->join('subjects', 'curriculumsubjects.subject_id', '=', 'subjects.subject_id')

		->select('curriculumsubjects.*','studentchecklists.grade as grade', 'subjects.*')
		->where('studentchecklists.user_id', $id)
		->where('curriculumsubjects.identifier', '=' , 0)
		->where('curriculumsubjects.curriculum_id', $curriculum_id)
		->get();

		$unique = $collection->unique('subject_code');
		return view('student', compact('unique'));

	
    }



}
