<?php

namespace App\Http\Controllers\API\Auth;

use App\Http\Controllers\BaseController;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegisterRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends BaseController
{
    public function register(RegisterRequest $request)
    {
        $hashedPassword = Hash::make($this->getFromReuqest($request, 'password'));

        $data['name'] = $this->getFromReuqest($request, 'name');
        $data['email'] = $this->getFromReuqest($request, 'email');
        $data['password'] = $hashedPassword;

        $result = $this->CRUD(new User(), null, 'create', $data);

        if ($result) {
            $this->attemptAuthentication($request);

            $token =  $result->createToken('Create new account')->plainTextToken;

            return response()->json(['user' => $result, 'token' => $token], 200);
        }
        return response()->json(['error' => 'Error Creating Account'], 500);
    }

    public function login(LoginRequest $request)
    {
        // Retrieve user credentials from the login request.
        $credentials = $request->only('email', 'password');

        // Find the user with the provided email.
        $user = $this->Select_column('first', User::class, '*', ['email' => $credentials['email']]);

        // Check if the user account is inactive.
        if ($user && $user->active === 'inactive') {
            $response = ['error' => 'Account inactive'];
            return response()->json($response, 400);
        }

        // Attempt to authenticate the user.
        if (auth()->attempt($credentials)) {
            $user = auth()->user();

            // Check if the user exists before creating a token.
            if ($user) {
                $token = $user->createToken('check credentials to login')->plainTextToken;
                $response = ['user' => $user, 'token' => $token];
                return response()->json($response, 200);
            } else {
                // Handle the case where the user is not found.
                $response = ['error' => 'User not found'];
                return response()->json($response, 404);
            }
        }

        $response = ['WrongCredentials' => 'Incorrect Credentials', 'success' => false];
        return response()->json($response, 400);
    }
}
