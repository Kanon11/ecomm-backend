<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function register(Request $req)
    {
        $objuser=new User();
        $objuser->name=$req->input('name');
        $objuser->password=Hash::make($req->input('password'));
        $objuser->email=$req->input('email');
        $objuser->save();
        return response($objuser);
    }
    public function login(Request $req)
    {
        $user=User::where('email',$req->email)->first();
        if(!$user || !Hash::check($req->password,$user->password)){
            return ['error'=>"user's password or email is not matched"];
        }
        return $user;
    }
}
