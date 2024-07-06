<?php

namespace App\Http\Controllers\Profile;

use App\Http\Controllers\BaseController;
use App\Http\Requests\ImageRequest;
use App\Http\Requests\PasswordRequest;
use App\Http\Requests\PrivacyCheckBoxRequest;
use App\Http\Requests\UserInfoRequest;
use App\Models\User;
use App\Models\UserPrivacy;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class SettingController extends BaseController
{
    /**
     * Display the user's settings.
     *
     * This function checks if the user is authenticated and then displays their profile settings.
     * If the user is not authenticated, it returns a 403 Forbidden error.
     *
     * @return \Illuminate\View\View
     */

    function settings()
    {
        // Check if the user is authenticated.
        if (auth()->check()) {
            // Get the user data.
            $data = auth()->user();
            // Return the view with user data.
            return $this->ViewWithData('profile/settings/settings', 'data', $data);
        } else {
            // Return a 403 Forbidden error if the user is not authenticated.
            abort(403);
        }
    }

    /**
     * Update the user's profile image.
     *
     * This function handles the image upload and updates the user's profile image. It then returns a success message.
     *
     * @param ImageRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */

    function updateImage(ImageRequest $request)
    {
        // Handle the user's image change.
        $this->USER_IMAGE('CHANGE', $request, 'image', 'ProfileImage', 'uploads');
        // Return a success message.
        return $this->Move('back_with_message', null, 'ImageChanged', 'Image changed');
    }

    /**
     * Remove the user's profile image.
     *
     * This function removes the user's profile image and returns a success message.
     *
     * @param ImageRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */

    function removeImage(ImageRequest $request)
    {
        // Remove the user's profile image.
        $this->USER_IMAGE('REMOVE', $request, 'image', 'ProfileImage', 'uploads');
        // Return a success message.
        return $this->Move('back_with_message', null, 'ImageRemoved', 'Image removed');
    }

    /**
     * Change the user's password.
     *
     * This function changes the user's password and returns a success message,
     * or error messages if the old password is incorrect or the new passwords don't match.
     *
     * @param PasswordRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */

    function changePassword(PasswordRequest $request)
    {
        // Get the old and new passwords.
        $old_password = $this->GetFromReuqest($request, 'old_password');
        $new_password = $this->GetFromReuqest($request, 'new_password');
        $confirm_password = $this->GetFromReuqest($request, 'confirm_password');

        $user = Auth::user();

        // Check the old password.
        if ($this->CHECK_OLD_PASSWORD($old_password)) {
            return $this->Move('back_with_message', null, 'old_password', 'old_password');
        } elseif ($new_password !== $confirm_password) {
            return $this->Move('back_with_message', null, 'failed_change_password', 'failed_change_password');
        }

        // Update the password.
        $dataToUpdate = [
            'password' => Hash::make($new_password),
        ];

        $this->CRUD(User::class, ['id' => $user->id], 'update', $dataToUpdate);

        return $this->Move("back_with_message", null, 'PasswordChanged', 'Password changed');
    }

    /**
     * Update the user's profile information.
     *
     * This function updates the user's profile information and returns a success message.
     *
     * @param UserInfoRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */

    function userInfo(UserInfoRequest $request)
    {
        $user = Auth::user();

        $data = [
            "language" => $this->GetFromReuqest($request, 'language'),
            "country" => $this->GetFromReuqest($request, 'country'),
            "city" => $this->GetFromReuqest($request, 'city'),
            "phone" => $this->GetFromReuqest($request, 'phone'),
            "birthday" => $this->GetFromReuqest($request, 'birthday'),
            "gender" => $this->GetFromReuqest($request, 'gender'),
            "description" => $this->GetFromReuqest($request, 'description'),
            "age" => $this->GetFromReuqest($request, 'age'),
            "fav_author" => $this->GetFromReuqest($request, 'fav_author'),
            "favorite_book_genre" => $this->GetFromReuqest($request, 'favorite_book_genre'),
            "worst_book" => $this->GetFromReuqest($request, 'worst_book'),
            "fav_book" => $this->GetFromReuqest($request, 'fav_book')
        ];

        // Update the user's profile information.
        $this->CRUD(User::class, ['id' => $user->id], 'update', $data);

        return $this->Move("back_with_message", null, 'InfoUpdate', 'info updated');
    }

    /**
     * Update the user's privacy settings.
     *
     * This function updates the user's privacy settings and returns a success message.
     *
     * @param PrivacyCheckBoxRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */

    function privacy(PrivacyCheckBoxRequest $request)
    {
        $dataUpdate = [
            'show_language' => $request->boolean('checkbox_language'),
            'show_country' => $request->boolean('checkbox_country'),
            'show_city' => $request->boolean('checkbox_city'),
            'show_phone' => $request->boolean('checkbox_phone'),
            'show_birthday' => $request->boolean('checkbox_birthday'),
            'show_gender' => $request->boolean('checkbox_gender'),
            'show_fav_auth' => $request->boolean('checkbox_fav_auth'),
            'show_favorite_book_genre' => $request->boolean('checkbox_favorite_book_genre'),
            'show_worst_book' => $request->boolean('checkbox_worst_book'),
            'show_fav_book' => $request->boolean('checkbox_fav_book'),
            'show_description' => $request->boolean('checkbox_description'),
        ];

        $user = Auth::user();

        // Update the user's privacy settings.
        $this->CRUD(UserPrivacy::class, ['user_id' => $user->id], 'update', $dataUpdate);

        return $this->Move("back_with_message", null, 'InfoUpdate', 'info updated');
    }
}
