<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Books\BookController;
use App\Http\Controllers\Home\HomeController;
use App\Http\Controllers\Preferences\PreferencesController;
use App\Http\Controllers\Profile\ProfileController;
use App\Http\Controllers\Profile\SettingController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Define routes for the HomeController
Route::controller(HomeController::class)->group(function () {
    // Define the home route
    Route::get('/', 'home')->name('home');

    Route::middleware(['auth', 'active'])->group(function () {

        // Define the contact us route
        Route::post('/message', 'SendMessage')->name('sendMessage');
    });
});

// Define routes for the AuthController
Route::controller(AuthController::class)->group(function () {
    // Middleware group for guest users (unauthenticated)
    Route::middleware(['guest'])->group(function () {
        // Define the registration and login routes for guest users
        Route::post('register', 'register')->name('register');
        Route::post('login', 'login')->name('login');
    });

    // Middleware group for authenticated users with 'active' status
    Route::middleware(['auth', 'active'])->group(function () {
        // Define the logout route for authenticated users with 'active' status
        Route::get('logout', 'logout')->name('logout');
    });
});

// Define routes for the ProfileController
Route::controller(ProfileController::class)->group(function () {
    // Middleware group for authenticated users with 'active' status
    Route::middleware(['auth', 'active'])->group(function () {
        // Define the profile route for authenticated users with 'active' status
        Route::get('profile', 'profile')->name('profile');
    });
});

// Define routes for the SettingController
Route::controller(SettingController::class)->group(function () {
    // Middleware group for authenticated users with 'active' status
    Route::middleware(['auth', 'active'])->group(function () {
        // Define various settings-related routes for authenticated users with 'active' status
        // Display the user settings page
        Route::get('settings', 'settings')->name('settings');

        // Update user profile image
        Route::post('UpdateImage', 'updateImage')->name('updateImage');

        // Remove user profile image
        Route::delete('RemoveImage', 'removeImage')->name('removeImage');

        // Change user password
        Route::post('change_password', 'changePassword')->name('changePassword');

        // Update user information
        Route::post('user_info', 'userInfo')->name('userInfo');

        // Manage user privacy settings
        Route::post('privacy', 'privacy')->name('privacy');
    });
});


Route::controller(BookController::class)->prefix('books')->group(function () {
    // Route to display all books
    Route::get("all_books", "allBooks")->name('allBooks');

    // Route to search for books
    Route::get('search', 'searchBook')->name('searchBook');

    // Categories routes
    // Route to display books in a specific category
    Route::get("Category/{category}", "category")->name('category');

    // Route to search for books within a specific category
    Route::get('searching', 'searchByCategory')->name('searchByCategory');

    // Single book routes
    // Route to display a single book
    Route::get('book_name/{book_id}', 'singleBook')->name('singleBook');

    // Routes protected by authentication and 'active' middleware
    Route::middleware(['auth', 'active'])->group(function () {
        // Route to download a book in PDF format
        Route::get('download-pdf/{bookId}', 'downloadPdf')->name('downloadPdf');

        // Route to embed a PDF book for reading
        Route::get('pdf/{bookId}', 'embedPdf')->name('embedPdf');

        // Route to post a comment on a book
        Route::post('comment/{bookId}', 'comment')->name('comment');

        // Route to delete a comment
        Route::delete('commentDelete', 'commentDelete')->name('commentDelete');

        // Route to view all comments for a book
        Route::get('AllComment/{bookId}', 'AllComment')->name('allComment');
    });

    // Routes accessible only to authenticated users with 'mode_admin' and 'active' middleware
    Route::middleware(['auth', 'mode_admin', 'active'])->group(function () {
        // Route to add a new book
        Route::get('addBook', 'addBook')->name('addBook');

        // Route to store a new book
        Route::post('/bookStore', 'bookStore')->name('bookStore');
    });
});


Route::controller(AdminController::class)->group(function () {
    // Middleware group for authentication, admin role, and active status
    Route::middleware(['auth', 'admin', 'active'])->prefix('admin')->group(function () {
        // Display the admin panel
        Route::get('/', 'adminPanel')->name('admin');

        // Display the list of active users
        Route::get('/user/active', 'userTable')->name('userTable');

        // Search for users
        Route::get('/search', 'searchUser')->name('searchUser');

        // Deactivate a user
        Route::post('/deactivateUser/{user_id}', 'deactivateUser')->name('deactivateUser');

        // Activate a user
        Route::post('/activateUser/{user_id}', 'activateUser')->name('activateUser');

        // Edit a single user's page
        Route::get('/user/edit/{user_id}', 'singleUserEditPage')->name('singleUserEditPage');

        // Update a user's image
        Route::post('UpdateImageAdmin', 'updateUserImage')->name('updateUserImage');

        // Remove a user's image
        Route::delete('RemoveImageAdmin', 'removeUserImage')->name('removeUserImage');

        // Handle user info for admin
        Route::post('updateUserInformation', 'updateUserInformation')->name('updateUserInformation');

        // Display the list of messages
        Route::get('/messageTable', 'messageTable')->name('messageTable');

        // Search for messages
        Route::get('/searchMessage', 'searchMessage')->name('searchMessage');

        // Delete a message
        Route::delete('/deleteMessage/{id}', 'deleteMessage')->name('deleteMessage');

        // Read a message
        Route::get('/messageRead/{id}', 'messageRead')->name('messageRead');

        // Route::get('/promote',  'promote')->name('promote');
        // Route::get('/promote/{user_id}',  'promote_user')->name('promote_user');
        // Route::post('/promoteAdmin/{id}',  'promoteAdmin')->name('promoteAdmin');
        // Route::post('/promoteUser/{id}',  'promoteUser')->name('promoteUser');
        // Route::post('/promoteMode/{id}',  'promoteMode')->name('promoteMode');
        // Route::get('/search_promote',  'search_promote')->name('search_promote');
    });
});



Route::get('languageConvert/{local}', [PreferencesController::class, 'Language_converter'])->name('languageConvert');
