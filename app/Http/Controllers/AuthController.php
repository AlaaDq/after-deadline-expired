<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    
    public function register(Request $request){


        $validator = Validator::make($request->all(),[
          'name' => ['required', 'string', 'max:255'],
          'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
          'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);

        if ($validator->fails())
          return response()->json([
              'error'=>$validator->errors(),
              'status_code'=>401  ],
                                    401);


        $user = User::create([
            'name' => request('name'),
            'email' => request('email'),
            'password' => Hash::make(request('password')),
        ]);
		
					
		$tokenResult = $user->createToken('Personal Access Token');

		$token = $tokenResult->token;

		if ($request->remember_me)
			$token->expires_at = Carbon::now()->addMinutes(10);

		if($token->save()){
		
        return response()->json([
			'user'=>$user,
			'access_token' => $tokenResult->accessToken,
			'token_type' => 'Bearer',
			'expires_at' => Carbon::parse($tokenResult->token->expires_at)->toDateTimeString(),
            'message'=>'user created successfully!',
            'status_code'=>201
        ],201);
		}
		
		  else {
			  return response()->json([
				  'message'=>'some error occurred, pleas try again',
				  'status_code'=>500
			  ],500);

		  }

}


public function login(Request $request)
{

  $validator = Validator::make($request->all(),[
      'email' => ['required', 'string', 'email', 'max:255'],
      'password' => ['required', 'string', 'min:8'],
      'remember_me' => ['sometimes','boolean']
    ]);

    if ($validator->fails())
      return response()->json([
          'error'=>$validator->errors(),
          'status_code'=>400  ],
                                400);

    $user = User::where('email', request('email'))->first();

    abort_unless($user, 404, 'This user does not exists.');
    abort_unless(
        Hash::check(request('password'), $user->password),
        403,
        'This password is not correct.'
    );


    //   $user = $request->user();

  
  $tokenResult = $user->createToken('Personal Access Token');

  $token = $tokenResult->token;

  if ($request->remember_me)
      $token->expires_at = Carbon::now()->addMinutes(10);

  if($token->save()){

  return response()->json([
      'user'=>$user,
      'access_token' => $tokenResult->accessToken,
      'token_type' => 'Bearer',
      'expires_at' => Carbon::parse($tokenResult->token->expires_at)->toDateTimeString(),
	  'message'=>"success",
      'status_code'=>200
  ],200);
  }

  else {
      return response()->json([
          'message'=>'some error occurred, pleas try again',
          'status_code'=>500
      ],500);

  }

}


public function logout(Request $request)
{
  $request->user()->token()->revoke();
  return response()->json([
      'message' => 'Successfully logged out'
  ]);
}

public function authUserDetails(Request $request){
  return response()->json([
      'name' => $request->user()->name,
      'email' => $request->user()->email
  ]);
}

}
