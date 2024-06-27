<?php

namespace App\Http\Controllers\Profile;

use App\Http\Controllers\BaseController;
use App\Http\Requests\ImageRequest;
use App\Http\Requests\PasswordRequest;
use App\Http\Requests\PrivacyCheckBoxRequest;
use App\Http\Requests\UserInfoRequest;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ProfileController extends BaseController
{
    /**
     * Display the user's profile page.
     *
     * This function checks if the user is authenticated and then displays the user's profile page with their data.
     * If the user is not authenticated, it returns a 403 Forbidden error.
     *
     * @return \Illuminate\View\View
     */

    function profile()
    {
        // Check if the user is authenticated.
        if (auth()->check()) {
            // Get the user data.
            $data = auth()->user();

            // Get the books associated with the user.
            $books = $data->user_book->map(function ($userBook) {
                return $userBook->book;
            });

            // Return the view with user data and book details.
            return $this->ViewWithData('Profile/profile', 'data', $data, 'books', $books);
        } else {
            // Return a 403 Forbidden error if the user is not authenticated.
            abort(403);
        }
    }
}
