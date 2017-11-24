<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', ['as'=>'/', 'uses'=>'LoginController@getLogin']);
Route::post('/login',['as'=>'login','uses'=>'LoginController@postLogin']);

Route::get('/noPermission',function(){
	return view('permission.noPermission');
});
Route::group(['middleware'=>['authen']], function(){
	Route::get('/logout',['as'=>'logout', 'uses'=>'LoginController@getLogout']);
	Route::get('/admin',['as'=>'admin', 'uses'=>'AdminController@dashboard']);
	Route::get('/studentPage',['as'=>'studentPage', 'uses'=>'AdminController@student']);
	Route::get('/login/index', 'LoginController@index');
});

Route::group(['middleware'=>['authen','roles'],'roles'=>['admin']],function(){
	
	Route::post('/department/getData','DepartmentController@getData');
	Route::post('/department/store', 'DepartmentController@store');
	Route::resource('department','DepartmentController');

	Route::post('/course/getData','CourseController@getData');
	Route::post('/course/store', 'CourseController@store');
	Route::resource('course','CourseController');

	Route::post('/subject/getData','SubjectController@getData');
	Route::post('/subject/store', 'SubjectController@store');
	Route::resource('subject','SubjectController');

	Route::get('/student', ['as'=>'manageStudent', 'uses'=>'DataTableController@index']);
	Route::get('/readStudent','StudentController@readData');
	Route::get('/student/showCourse',['as'=>'showCourse', 'uses'=>'StudentController@showCourse']);

	Route::post('/curriculum/getData','CurriculumController@getData');
	Route::post('/curriculum/store', 'CurriculumController@store');
	Route::resource('curriculum','CurriculumController');

	Route::post('/curriculumsubject/getData','CurriculumSubjectController@getData');
	Route::post('/curriculumsubject/getSubjects','CurriculumSubjectController@getDataSubjects');
	Route::post('/curriculumsubject/store', 'CurriculumSubjectController@store');
	Route::resource('curriculumsubject','CurriculumSubjectController');

	Route::post('/studentchecklist/getData','StudentController@getStudentChecklist');

	Route::post('/student/getData','StudentController@getData');
	Route::post('/student/store', 'StudentController@store');
	Route::post('/student/updateGrade','StudentController@updateGrade');
	Route::resource('student','StudentController');
	Route::post('/studentAuth/getStudentAuth','AdminController@getAuth');

	
});

Route::group(['middleware'=>['authen','roles'],'roles'=>['student']],function(){	
	Route::post('/studentchecklistpage/getData','StudentController@getStudentChecklistForStudentPage');
	Route::post('/studPageStudDetail/getData','StudentController@studPageStudDetail');
	
});



