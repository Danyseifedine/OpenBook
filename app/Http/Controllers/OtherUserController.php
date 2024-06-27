<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class OtherUserController extends Controller
{
    public function user($id)
    {
        $data = User::find($id);

        $books = $data->user_book->map(function ($userBook) {
            return $userBook->book;
        });
        return view('otherUser.user', compact('data', 'books'));
    }

    public function search(Request $request)
    {
        $data = User::where('name', 'like', '%' . $request->search . '%')->get();
        return view('otherUser.search', compact('data'));
    }
}
