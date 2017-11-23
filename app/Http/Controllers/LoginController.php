<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Auth;

class LoginController extends Controller
{

    use AuthenticatesUsers;
	protected $username = 'username';
    protected $redirectTo = '/admin';
    protected $guard = 'web';

    public function getLogin()
    {
    	if (Auth::guard('web')->check())
    	{
    		return redirect()->route('admin');
    	}

    	return view('login');
    }

    public function index()
    {
        $user_id = Auth::user()->id;
        return $user_id;
    }
    public function postLogin(Request $request)
    {
    	$auth = Auth::guard('web')->attempt(['email'=>$request->username, 'password'=>$request->password]);

    	if ($auth)
    	{
    		return redirect()->route('admin');
    	}
    	return redirect()->route('/');
    }

    public function getLogout()
    {
    	Auth::guard('web')->logout();
    	return redirect()->route('/');
    }

     public function zxc()
    {
    	return view('layouts.welcome');
    }
}
