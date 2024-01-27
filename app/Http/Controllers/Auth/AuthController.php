<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\BaseController;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegisterRequest;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends BaseController
{

    /**
     * Register a new user.
     *
     * This function handles the registration of a new user.
     *  It takes the user's name, email, and password from the registration request and creates a new user in the database.
     *  The password is hashed for security.
     *  After registration, it attempts to authenticate the user and then redirects back with a success message.
     *
     * @param  \App\Http\Requests\RegisterRequest  $request The registration request containing user information.
     * @return \Illuminate\Http\RedirectResponse
     */
    public function register(RegisterRequest $request)
    {
        // Hash the user's password for security.
        $hashedPassword = Hash::make($this->GetFromReuqest($request, 'password'));

        // Prepare user data for registration.
        $data['name'] = $this->GetFromReuqest($request, 'name');
        $data['email'] = $this->GetFromReuqest($request, 'email');
        $data['password'] = $hashedPassword;

        // Create a new user in the database.
        $result = $this->CRUD(new User(), null, 'create', $data);

        if ($result) {
            // Attempt to authenticate the newly registered user.
            $this->attemptAuthentication($request);

            // Redirect back with a success message.
            return $this->Move('back_with_message', null, 'success', 'Account Created');
        } else {
            // If there was an error during creation, redirect back with an error message.
            return $this->Move('back_with_error', null, 'danger', 'Error Creating Account');
        }
    }




    /**
     * Authenticate a user's login and handle login requests.
     *
     * This function handles user login requests. It takes the login request,
     *  attempts to authenticate the user's credentials, and checks the user's account status.
     *  If the user's account is active and authentication is successful,
     *  it redirects back with a success message. If the account is inactive,
     *  it informs the user to contact the administrator. If authentication fails,
     *  it redirects back with a failure message.
     *
     * @param  \App\Http\Requests\LoginRequest  $request The login request containing user credentials.
     * @return \Illuminate\Http\RedirectResponse
     */
    public function login(LoginRequest $request)
    {
        // Retrieve user credentials from the login request.
        $credentials = $request->only('email', 'password');

        // Find the user with the provided email.
        $user = $this->Select_column('first', User::class, '*', ['email' => $credentials['email']]);

        // Check if the user account is inactive.
        if ($user->active === 'inactive') {
            return $this->Move('back_with_message', null, 'inactive', 'Your account is inactive. Contact the administrator.');
        }

        // Attempt to authenticate the user.
        if ($this->attemptAuthentication($request)) {
            return $this->Move('back_with_message', null, 'success', 'Login successful');
        } else {
            return $this->Move('back_with_message', null, 'fail', 'Invalid email or password');
        }
    }


    /**
     * Log the user out of the application.
     *
     * This function logs the currently authenticated user out of the application.
     *  After logging out, it redirects the user back to the previous page.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function logout()
    {
        // Log the user out.
        Auth::logout();

        // Redirect the user back to the previous page.
        return $this->Move('redirect_back', 'home');
    }
}
