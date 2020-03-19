<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
        $this->middleware('guest:admin')->except('logout');
    }

    public function loginAdmin(Request $request)
    {
        $this->validate($request, [
            'username'   => 'required',
            'password' => 'required'
        ]);

        if (auth()->guard('admin')->attempt(['username' => $request->username, 'password' => $request->password, 'status' => 1],  $request->get('remember'))) {
            return redirect()->intended('/admin');
        }
        return back()->withInput($request->only('username', 'remember'));
    }

    public function showAdminLoginForm()
    {
        return view('back-end.auth.login', ['url' => route('admin.login.post')]);
    }

    public function logoutAdmin(){
        if(auth()->guard('admin')->check())
            auth()->guard('admin')->logout();
        return redirect()->route('admin.home');
    }
}
