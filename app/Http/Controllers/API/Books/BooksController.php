<?php

namespace App\Http\Controllers\API\Books;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Book;

class BooksController extends Controller
{
    public function index()
    {
        // Get all books
        $books = Book::all()->map(function ($book) {
            if ($book->cover_image && file_exists(public_path('books_cover/' . $book->cover_image))) {
                $book->cover_image = url('books_cover/' . $book->cover_image);
                $book->pdf = url('pdfs/' . $book->pdf);
            } else {
                $book->cover_image = null;
            }
            return $book;
        });

        // Get books under 100 pages
        $booksUnder100Pages = $books->filter(function ($book) {
            return $book->pages < 100;
        });

        $bookRate5 = $books->filter(function ($book) {
            return $book->world_rate == 50;
        });

        return response()->json([
            'books' => $books,
            'books_under_100_pages' => $booksUnder100Pages->values(),
            'books_rate_5' => $bookRate5->values()
        ]);
    }
}
