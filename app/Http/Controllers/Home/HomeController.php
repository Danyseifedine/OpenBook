<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\BaseController;
use App\Http\Requests\ContactRequest;
use App\Mail\feedback;
use App\Models\Book;
use App\Models\Contacts;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class HomeController extends BaseController
{
    /**
     * Display the home page with user data if authenticated.
     *
     * This function checks if a user is authenticated.
     * If a user is logged in, it retrieves the user data and renders the 'home' view with the user's data.
     * If no user is logged in, it displays the 'home' view without user data.
     *
     * @return \Illuminate\Contracts\View\View
     */

    public function home()
    {
        $books = $this->Select_column("Random_order_with_paginate", Book::class, '*', null, 30, 'id', 'DESC');

        if (auth()->check()) {
            // Get the user data for the authenticated user.
            $userData = auth()->user();


            // Render the 'home' view with user data.
            return $this->ViewWithData('home/home', 'data', $userData, 'books', $books);
        } else {
            // Render the 'home' view without user data.
            return $this->ViewWithData('home/home', 'books', $books);
        }
    }

    /**
     * Send a message using the provided contact information.
     *
     * This function takes the contact details from the request, including the subject and message,
     * and sends a message on behalf of the authenticated user.
     * It then handles the result of the message sending operation and redirects the user accordingly.
     *
     * @param ContactRequest $request The request containing the contact information
     * @return \Illuminate\Http\RedirectResponse A redirect response based on the result of the message sending operation
     */

    public function sendMessage(ContactRequest $request)
    {
        // Prepare the data for the new message
        $data = [
            "user_id" => auth()->user()->id,
            "subject" => $request->input("subject"),
            "message" => $request->input("message"),
            "status" => "unread",
        ];

        $user = auth()->user();

        // Create a new entry in the Contacts table
        $result = $this->CRUD(Contacts::class, null, 'create', $data);

        // Check if the message creation was successful

        Mail::to('dany.a.seifeddine@gmail.com')->send(new feedback($data, $user));

        if ($result) {
            // Redirect back with a success message
            return $this->Move('back_with_message', null, 'sent', '');
        } else {
            // Redirect back without a message
            return $this->Move('back_with_message', null, 'failed_To_send_message', '');
        }
    }
}
