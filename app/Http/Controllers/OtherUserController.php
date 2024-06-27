<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\BaseController;


class OtherUserController extends BaseController
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
        $query = $request->input('query');

        $datas = User::where('name', 'LIKE', '%' . $query . '%')
            ->orWhere('email', 'LIKE', '%' . $query . '%')
            ->paginate(12);

        return view('otherUser.search', compact('datas'));
    }
}
