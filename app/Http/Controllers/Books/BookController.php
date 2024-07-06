<?php

namespace App\Http\Controllers\Books;

use App\Http\Controllers\BaseController;
use App\Http\Requests\CommentRequest;
use App\Models\Book;
use App\Models\BookComment;
use App\Models\BookUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;

class BookController extends BaseController
{


    /**
     * Display the add book view with authenticated user data.
     *
     * This function checks if the user is authenticated,
     * retrieves the currently authenticated user, and then returns a view with the user data to add a book.
     *
     * @return \Illuminate\View\View The add book view with the authenticated user data
     */

    function addBook()
    {
        // Check if the user is authenticated
        if (auth()->user()) {
            // Get the currently authenticated user
            $user = Auth::user();

            // Return a view with user data
            return $this->ViewWithData('books.addBook.addBook', 'data', $user);
        }
    }

    /**
     * Store a new book with the provided information.
     *
     * This function handles the request to add a new book by processing and storing the book cover image and PDF file,
     * as well as the book details.
     * It then performs a CRUD (Create) operation on the Book model with the provided data and redirects back with a success message.
     *
     * @param Request $request The request containing the book information and files
     * @return \Illuminate\Http\RedirectResponse A redirect response with a success message after adding the book
     */

    function bookStore(Request $request)
    {
        // Get the book cover image from the request
        $image = $request->book_cover;

        // Upload the book cover image and get the filename
        $filename = $this->uploadFile('image', $image, 'books_cover');

        // Get the PDF file from the request
        $pdfFile = $request->file('pdf_file');

        // Upload the PDF file and get the filename
        $pdf_name = $this->uploadFile('pdf', $pdfFile, 'pdfs');

        // Create an array with book data from the request
        $data = [
            'cover_image' => $filename,
            'pdf' => $pdf_name,
            'name' => $request->book_title,
            'author' => $request->book_author,
            'publication_date' => $request->publication_date,
            'category' => $request->book_category,
            'category_arabic' => $request->book_category_arabic,
            'description_arabic' => $request->book_description_arabic,
            'language_arabic' => $request->book_language_arabic,
            'language' => $request->book_language,
            'pages' => $request->book_page,
            'world_rate' => $request->book_rate,
            'description' => $request->book_description
        ];

        // Perform the CRUD (Create) operation on the Book model with the provided data
        $this->CRUD(Book::class, null, 'create', $data);

        // Redirect back with a success message
        return $this->Move('back_with_message', null, 'success', 'Book added');
    }


    /**
     * Display all books with pagination.
     *
     * This function retrieves a paginated list of all books, with 36 books displayed per page,
     * ordered by ID in descending order. If a user is authenticated, it includes user data along with the books.
     * The function then renders the 'allbooks' view to display the books.
     *
     * @return \Illuminate\View\View The view with the paginated list of all books
     */

    function allBooks()
    {
        // Check if a user is authenticated.
        if (auth()->user()) {
            $user = auth()->user();
            // Retrieve a paginated list of books, 36 books per page, ordered by ID in descending order.
            $books = $this->Select_column('paginate', Book::class, '*', null, 36, 'id', 'DESC');
            return view('books/allbooks', [
                "books" => $books,
                "data" => $user
            ]);
        } else {
            // Retrieve a paginated list of books for non-authenticated users.
            $books = $this->Select_column('paginate', Book::class, '*', null, 36, 'id', 'DESC');
            return view('books/allbooks', [
                "books" => $books,
            ]);
        }
    }


    /**
     * Search for books based on the provided search query and options.
     *
     * This function processes the search query and options from the request to create a query builder for the "Book" model.
     * It then constructs the search criteria based on the query and search options, and paginates the search results.
     * If no search query is provided, it retrieves a random selection of books in pagination.
     *
     * @param Request $request The request containing the search query and options
     * @return \Illuminate\View\View The view with the search results
     */

    public function searchBook(Request $request)
    {
        // Get search query and search options from the request.
        $query = $request->input('query');
        $searchOption1 = $request->input('searchOption_1');
        $searchOption2 = $request->input('searchOption_2');
        $searchOption3 = $request->input('searchOption_3');
        $searchOption4 = $request->input('searchOption_4');

        // Create a query builder for the "Book" model.
        $books = Book::query();

        // Check if a search query is provided.
        if ($query) {
            $books->where(function ($queryBuilder) use ($query, $searchOption1, $searchOption2, $searchOption3, $searchOption4) {
                $queryBuilder->where('name', 'LIKE', '%' . $query . '%');

                if ($searchOption1 === 'byAuthor') {
                    $queryBuilder->orWhere('author', 'LIKE', '%' . $query . '%');
                }

                if ($searchOption2 === 'byPublished_date') {
                    $queryBuilder->orWhere('publication_date', 'LIKE', '%' . $query . '%');
                }

                if ($searchOption3 === 'byLanguage') {
                    $queryBuilder->orWhere('language', 'LIKE', '%' . $query . '%');
                }

                if ($searchOption4 === 'byPages') {
                    $queryBuilder->orWhere('Pages', 'LIKE', '%' . $query . '%');
                }
            });

            // Paginate the search results (15 results per page).
            $books = $books->paginate(15);
        } else {
            // If no query is provided, retrieve a random selection of books in pagination.
            $books = $this->Select_column('Random_order_with_paginate', Book::class, '*', null, 36);
        }

        return view('books/search/searchingAllBooks', [
            'books' => $books,
        ]);
    }


    /**
     * Display books belonging to a specific category.
     *
     * This function retrieves books from the specified category and displays them in the 'categoryBook' view.
     * If a user is authenticated, it includes user data along with the books.
     * The function uses pagination to display up to 36 books per page.
     *
     * @param string $category The category for which books are to be displayed
     * @return \Illuminate\View\View The view with the books from the specified category
     */

    function category($category)
    {
        if (auth()->user()) {
            $user = auth()->user();
            $books = $this->Select_column('paginate', Book::class, '*', ['category' => $category], 36, 'id', 'DESC');
            return view('books/categories/categoryBook', [
                "books" => $books,
                "data" => $user,
                "category" => $category
            ]);
        } else {
            $books = $this->Select_column('paginate', Book::class, '*', ['category' => $category], 36, 'id', 'DESC');
            return view('books/categories/categoryBook', [
                "books" => $books,
                "category" => $category
            ]);
        }
    }

    /**
     * Search for books by category and optional search query, applying dynamic filters and handling pagination.
     *
     * This function takes an HTTP request containing search parameters, including the search query and options,
     * and retrieves books based on the specified category and search criteria.
     * It provides the flexibility to search for books by various criteria and handles pagination for search results.

     * @param Request $request The HTTP request instance containing search parameters.
     * @return \Illuminate\View\View The view displaying the search results.
     */

    public function searchByCategory(Request $request)
    {
        // Get search query and search options from the request.
        $query = $request->input('query');
        $searchOption1 = $this->GetFromReuqest($request, 'searchOption_1');
        $searchOption2 = $this->GetFromReuqest($request, 'searchOption_2');
        $searchOption3 = $this->GetFromReuqest($request, 'searchOption_3');
        $searchOption4 = $this->GetFromReuqest($request, 'searchOption_4');

        $category = $this->GetFromReuqest($request, 'category');

        // Create a query builder for the "Book" model.
        $books = Book::where('category',  $category);

        // Check if a search query is provided.
        if ($query) {
            $books->where(function ($queryBuilder) use ($query, $searchOption1, $searchOption2, $searchOption3, $searchOption4) {
                $queryBuilder->where('name', 'LIKE', '%' . $query . '%');

                if ($searchOption1 === 'byAuthor') {
                    $queryBuilder->orWhere('author', 'LIKE', '%' . $query . '%');
                }

                if ($searchOption2 === 'byPublished_date') {
                    $queryBuilder->orWhere('publication_date', 'LIKE', '%' . $query . '%');
                }

                if ($searchOption3 === 'byLanguage') {
                    $queryBuilder->orWhere('language', 'LIKE', '%' . $query . '%');
                }

                if ($searchOption4 === 'byPages') {
                    $queryBuilder->orWhere('Pages', 'LIKE', '%' . $query . '%');
                }
            });

            // Paginate the search results (15 results per page).
            $books = $books->paginate(15);
        } else {
            // If no query is provided, retrieve a random selection of books in pagination.
            $books = $this->Select_column('Random_order_with_paginate', Book::class, '*', ['category' => $category], 36);
        }

        return view('books/search/searchingAllBooks', [
            'books' => $books,
        ]);
    }


    /**
     * Retrieve details of a single book, along with suggested books, author's other books, and comments.
     *
     * This function takes the ID of a book and retrieves its details, along with suggested books in random order,
     * other books by the same author, and comments related to the book.
     * It also handles the view logic based on the user's authentication status.

     * @param int $book_id The ID of the book for which details are to be retrieved.
     * @return \Illuminate\View\View The view displaying the single book details, along with suggested books, author's other books, and comments.
     */

    function singleBook($book_id)
    {
        // Retrieve the details of the specified book by its ID.
        $books = $this->Select_column('first', Book::class, '*', ['id' => $book_id]);

        // Retrieve a list of suggested books in random order.
        $suggestedBooks = $this->Select_column('Random_order_with_paginate', Book::class, '*', function ($query) use ($book_id, $books) {
            $query->where('id', '!=', $book_id);
        }, 12);

        // Retrieve a list of books by the same author.
        $authorBooks = $this->Select_column('paginate', Book::class, '*', function ($query) use ($book_id, $books) {
            $query->where('author', $books->author)
                ->where('id', '!=', $book_id);
        }, 12, 'id', 'ASC');

        // Retrieve all comments for the book and order them by date in random order.
        $allcomment = BookComment::where(['book_id' => $books->id])->orderBy('created_at', 'DESC')->inRandomOrder()->get();

        // Take a subset of comments to display.
        $comment = $allcomment->take(4);

        // Check if a user is authenticated.
        if (auth()->user()) {
            $user = auth()->user();

            return view('books/singleBook/singleBook', [
                "book" => $books,
                "data" => $user,
                'suggestedBooks' => $suggestedBooks,
                'comments' => $comment,
                'allcomment' => $allcomment,
                'authorBooks' => $authorBooks
            ]);
        } else {
            return view('books/singleBook/singleBook', [
                "book" => $books,
                'suggestedBooks' => $suggestedBooks,
                'comments' => $comment,
                'authorBooks' => $authorBooks
            ]);
        }
    }

    /**
     * Download the PDF for a specific book.
     *
     * This function allows users to download the PDF file of a specific book by providing its ID.
     * It also tracks the download count for the book and logs the user's interaction with the book.
     *
     * @param  mixed $bookId The ID of the book to download the PDF for.
     * @return \Symfony\Component\HttpFoundation\BinaryFileResponse|void
     */
    public function downloadPdf($bookId)
    {
        // Retrieve book details based on the provided book ID.
        $book = $this->Select_column('first', Book::class, "*", ['id' => $bookId]);

        if ($book) {
            // Update the download count for the book.
            $data = [
                'download_count' => $book->download_count + 1,
            ];

            // Store user's interaction with the book.
            $store = [
                'user_id' => auth()->user()->id,
                'book_id' => $bookId,
            ];

            // Update the book's download count.
            $this->CRUD(Book::class, ['id' => $bookId], 'update', $data);

            // Check if the user has interacted with the book before and log the interaction.
            $find = $this->Select_column('first', BookUser::class, '*', ['user_id' => auth()->user()->id, 'book_id' => $bookId]);

            if (!$find) {
                $this->CRUD(BookUser::class, null, 'create', $store);
            }

            // Generate the PDF file path and initiate the download.
            $pdfPath = public_path('pdfs/' . $book->pdf);

            return response()->download($pdfPath, $book->name . '.pdf');
        }
    }


    /**
     * Display the embedded PDF viewer for a specific book.
     *
     * This function retrieves and displays the embedded PDF viewer for a book specified by its ID.
     *
     * @param  mixed $bookId The encrypted ID of the book to display the embedded PDF for.
     * @return \Illuminate\View\View
     */

    function embedPdf($bookId)
    {
        // Decrypt the book ID to access the book's details.
        $bookId = Crypt::decrypt($bookId);

        // Check if a user is authenticated.
        if (auth()->user()) {
            $user = auth()->user();

            // Retrieve the PDF URL for the specified book.
            $book = $this->Select_column('first', Book::class, 'pdf', ['id' => $bookId]);

            return view('books/singleBook/embedPdf', [
                "book" => $book,
                "data" => $user
            ]);
        }
    }


    /**
     * Handle user comments for a specific book.
     *
     * This function takes a CommentRequest and the ID of the book and processes the user's comment.
     * It checks if the user is authenticated, verifies if the user has already commented on the book,
     * and then either returns an error response or saves the new comment and returns a JSON response with the comment details.

     * @param \App\Http\Requests\CommentRequest $request The request containing the user's comment.
     * @param int $bookId The ID of the book for which the comment is being submitted.
     * @return \Illuminate\Http\JsonResponse The JSON response with the comment details or an error message.
     */

    function comment(CommentRequest $request, $bookId)
    {
        if (auth()->check()) {
            // Check if the user has already commented on this book.
            $check = BookComment::where(['book_id' => $bookId, 'user_id' => Auth::id()])->first();

            if ($check) {
                return response()->json([
                    'false' => 'Sorry, you have already commented on this book!',
                ]);
            } else {
                // Create a new comment and save it.
                $comment = new BookComment();
                $comment->user_id = auth()->user()->id;
                $comment->book_id = $bookId;
                $comment->comment = $request->input('review');
                $comment->save();

                return response()->json([
                    'commentId' => $comment->id,
                    'date' => $comment->created_at,
                    'comment' => $request->review,
                    'username' => auth()->user()->name,
                    'email' => auth()->user()->email,
                    'ProfileImage' => auth()->user()->ProfileImage,
                ]);
            }
        }
    }


    /**
     * Delete a user's comment.
     *
     * This function takes a Request and deletes the comment with the specified ID if it belongs to the authenticated user.
     * It returns a JSON response with a success message if the comment is deleted successfully,
     * an error message if the comment is not found, and a false value if the comment does not belong to the authenticated user.
     *
     * @param \Illuminate\Http\Request $request The request containing the ID of the comment to be deleted.
     * @return \Illuminate\Http\JsonResponse The JSON response with the deletion status or an error message.
     */

    public function commentDelete(Request $request)
    {
        // Get the comment ID from the request.
        $commentId = $request->input('comment_id');

        // Find the comment by its ID.
        $comment = BookComment::find($commentId);

        // Check if the comment exists and belongs to the authenticated user.
        if ($comment->user_id == auth()->user()->id) {
            if ($comment) {
                // Delete the comment.
                $comment->delete();
                return response()->json(['message' => 'Comment deleted successfully']);
            } else {
                return response()->json(['error' => 'Comment not found'], 404);
            }
        } else {
            return false;
        }
    }



    /**
     * Display all comments for a book.
     *
     * This function retrieves and displays all comments for a book. It checks if the user is authenticated and then retrieves
     * the book and its comments to display on the page.
     *
     * @param  string $bookId The encrypted book ID.
     * @return \Illuminate\View\View
     */

    public function allComment($bookId)
    {

        if (auth()->user()) {
            // Decrypt the book ID
            $bookId = Crypt::decrypt($bookId);

            if (auth()->check()) {
                // Get the authenticated user
                $user = auth()->user();

                // Retrieve the book
                $book = $this->Select_column("first", Book::class, '*', ['id' => $bookId]);

                // Retrieve the comments for the book
                $comments = $this->Select_column('paginate', BookComment::class, '*', null, 20, 'created_at', 'DESC');

                return view('books/singleBook/singleBookAllComment/allComment', [
                    "book" => $book,
                    "data" => $user,
                    'comments' => $comments,
                ]);
            }
        } else {
            return $this->Move('redirect_back', 'home');
        }
    }
}
