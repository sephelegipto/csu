<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;
use App\Department;
class DepartmentController extends Controller
{
	public function getData()
	{
		return Department::orderBy('name','ASC')->get();
	}

	public function store(Request $request)
	{
		$dept = new Department;
		$dept->name = $request->name;
		$dept->abbre = $request->abbre;
		$dept->save();
		return $dept;
	}

	public function destroy(Department $department)
    {

  
    	Department::where('department_id', $department->department_id)->delete();
    }

    public function update(Request $request)
    {

    	$dept = Department::find($request->department_id);
    	$dept->name = $request->name; 
    	$dept->abbre = $request->abbre;   	
    	$dept->save();

    }
}
