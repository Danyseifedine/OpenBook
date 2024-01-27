<?php

namespace App\Http\Controllers\Preferences;

use App\Http\Controllers\BaseController;
// use Illuminate\Http\Request;

class PreferencesController extends BaseController
{

    /**
     * Change the application's language/locale.
     *
     * This function allows users to switch the application's language or locale.
     *  It checks if the provided locale is in the list of allowed locales,
     *  and if so, it sets the application's locale using the session. After setting the locale,
     *  the function redirects back to the previous page.
     *
     * @param  string $local_language The desired locale to switch to.
     * @return \Illuminate\Http\RedirectResponse
     */

    function Language_converter($local_language)
    {
        // List of allowed locales.
        $allowedLocales = ['ar', 'en'];

        // Check if the provided locale is in the list of allowed locales.
        if (in_array($local_language, $allowedLocales)) {
            // Set the application's locale using the session.
            session(['locale' => $local_language]);
        }

        // Redirect back to the previous page.
        return redirect()->back();
    }
}
