<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\BaseController;
use App\Models\Book;
use App\Models\Contacts;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;

class AdminController extends BaseController
{
    /**
     * Display the admin panel view with user data.
     *
     * If the user is authenticated, this function loads the 'Admin/admin' view and passes the user's data.
     *
     * @return \Illuminate\Http\Response
     */
    function adminPanel()
    {
        if (auth()->user()) {
            $userCount = User::count();
            $userRole0Count = User::where('role', 0)->count();
            $userRole1Count = User::where('role', 1)->count();
            $userRole2Count = User::where('role', 2)->count();
            $userDeactivedCount = User::where('active', 'inactive')->count();
            $bookCount = Book::count();

            $mostDownloadedBook = Book::orderBy('download_count', 'DESC')->first();

            $data = auth()->user();

            return view('admin/admin', [
                'data' => $data,
                'userCount' => $userCount,
                'userRole0Count' => $userRole0Count,
                'userRole1Count' => $userRole1Count,
                'userRole2Count' => $userRole2Count,
                'userDeactivedCount' => $userDeactivedCount,
                'bookCount' => $bookCount,
                'mostDownloadedBook' => $mostDownloadedBook
            ]);
        }
    }


    // ******************************* START USER  ****************************** //

    /**
     * Display a paginated table of users.
     *
     * This function retrieves a paginated list of users and passes it to the 'Admin.UserTable.userTable' view.
     * It also calculates the iteration count for the current page.
     *
     * @return \Illuminate\Http\Response
     */

    function userTable()
    {
        if (auth()->check()) {
            $data = auth()->user();
        }

        $users = $this->Select_column('paginate', User::class, '*', null, 10, 'id', 'DESC');
        $iterationCount = ($users->currentPage() - 1) * $users->perPage();

        return $this->ViewWithData('admin.userTable.userTable', 'users', $users, 'data', $data, 'iteration', $iterationCount);
    }

    /**
     * Perform a search for users based on the provided query and search options.
     *
     * This function retrieves users based on the search query and options,
     * including email, country, role, language, gender, favorite book genre, and age.
     * It constructs a paginated view with the search results and iteration count for the search user view.
     *
     * @param Request $request The HTTP request containing the search query and options
     * @return \Illuminate\View\View The search user view with the paginated search results and iteration count
     */

    public function searchUser(Request $request)
    {
        $query = $request->input('query');
        $searchOption1 = $request->input('searchOption_1');
        $searchOption2 = $request->input('searchOption_2');
        $searchOption3 = $request->input('searchOption_3');
        $searchOption4 = $request->input('searchOption_4');
        $searchOption5 = $request->input('searchOption_5');
        $searchOption6 = $request->input('searchOption_6');
        $searchOption7 = $request->input('searchOption_7');



        $conditions = [['name', 'LIKE', '%' . $query . '%']];

        if ($searchOption1 === 'byEmail') {
            $conditions = [['email', 'LIKE', '%' . $query . '%']];
        }

        if ($searchOption2 === 'byCountry') {
            $conditions = [['country', 'LIKE', '%' . $query . '%']];
        }

        if ($searchOption3 === 'byRole') {
            $conditions = [['role', 'LIKE', '%' . $query . '%']];
        }

        if ($searchOption4 === 'byLanguage') {
            $conditions = [['language', 'LIKE', '%' . $query . '%']];
        }

        if ($searchOption5 === 'byGender') {
            $conditions = [['gender', 'LIKE', '%' . $query . '%']];
        }

        if ($searchOption6 === 'byCategory') {
            $conditions = [['favorite_book_genre', 'LIKE', '%' . $query . '%']];
        }

        if ($searchOption7 === 'byAge') {
            $conditions = [['age', 'LIKE', '%' . $query . '%']];
        }

        $datas = $this->Select_column('paginate', User::class, '*', $conditions, 12, 'id', 'DESC');
        $iterationCount = ($datas->currentPage() - 1) * $datas->perPage();


        return $this->ViewWithData('admin.userTable.search.searchUser', 'datas', $datas, 'iteration', $iterationCount);
    }

    /**
     * Deactivate a user.
     *
     * This function deactivates a user by setting their 'active' status to 'inactive'. It then returns a success message.
     *
     * @param  string $user_id
     * @return \Illuminate\Http\Response
     */

    function deactivateUser($user_id)
    {
        $id = Crypt::decrypt($user_id);

        $data = ["active" => "inactive"];

        $this->CRUD(User::class, ['id' => $id], 'update', $data);
        return $this->Move('back_with_message', null, 'success', 'User deactivated');
    }

    /**
     * Activate a user.
     *
     * This function activates a user by setting their 'active' status to 'active'.
     * It then returns a success message.
     *
     * @param  string $user_id
     * @return \Illuminate\Http\Response
     */

    function activateUser($user_id)
    {
        $id = Crypt::decrypt($user_id);

        $data = ["active" => "active"];

        $this->CRUD(User::class, ['id' => $id], 'update', $data);
        return $this->Move('back_with_message', null, 'success', 'User activated');
    }


    /**
     * Display the user's edit page for a single user.
     *
     * If a user is authenticated, this function retrieves the user's data and loads the 'Admin.
     * UserTable.SingleUserEdit.singleUserEdit' view for editing.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */

    function singleUserEditPage($id)
    {
        if (auth()->check()) {
            $data = auth()->user();
        }

        $user = $this->Select_column('first', User::class, '*', ['id' => $id]);

        return $this->ViewWithData('admin.userTable.singleUserEdit.singleUserEdit', 'user', $user, 'data', $data);
    }

    /**
     * Update the user's profile image.
     *
     * This function updates the user's profile image.
     * It first checks if the old image exists, deletes it, and then saves the new image.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */

    function updateUserImage(Request $request)
    {
        $id = $this->GetFromReuqest($request, 'image_hidden_id');
        $image = $this->GetFileFromRequest($request, 'image');

        // Check if the old image exists and delete it
        $check = $this->Select_column('first', User::class, '*', ['id' => $id]);
        if ($check->ProfileImage) {
            $oldImage = public_path('uploads') . '/' . $check->ProfileImage;
            if (file_exists($oldImage)) {
                unlink($oldImage);
            }
        }

        $extension = strtolower($image->extension());
        $filename = time() . rand(1, 10000) . "." . $extension;
        $image->move(public_path('uploads'), $filename);
        $data = [
            'ProfileImage' => $filename,
        ];
        $this->CRUD(User::class, ['id' => $id], 'update', $data);

        return $this->Move('back_with_message', 'success', 'Image changed');
    }

    /**
     * Remove the user's profile image.
     *
     * This function removes the user's profile image. It checks if the old image exists and deletes it from the server.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */

    function removeUserImage(Request $request)
    {
        $id = $this->GetFromReuqest($request, 'image_hidden_id');

        // Check if the old image exists and delete it
        $check = $this->Select_column('first', User::class, '*', ['id' => $id]);
        if ($check->ProfileImage) {
            $oldImage = public_path('uploads') . '/' . $check->ProfileImage;
            if (file_exists($oldImage)) {
                unlink($oldImage);
            }
        }

        $dataToUpdate = ['ProfileImage' => null];
        $this->CRUD(User::class, ['id' => $id], 'update', $dataToUpdate);
        return $this->Move('back_with_message', 'success', 'Image removed');
    }



    /**
     * Update user information based on the provided request data.
     *
     * @param Request $request The HTTP request containing user information
     * @return \Illuminate\Http\RedirectResponse A redirect response to the previous page with a success message
     */

    function updateUserInformation(Request $request)
    {

        $id = $this->GetFromReuqest($request, 'user_hidden_id');

        $data = [
            "language"            => $this->GetFromReuqest($request, 'language'),
            "country"             => $this->GetFromReuqest($request, 'country'),
            "city"                => $this->GetFromReuqest($request, 'city'),
            "phone"               => $this->GetFromReuqest($request, 'phone'),
            "birthday"            => $this->GetFromReuqest($request, 'birthday'),
            "gender"              => $this->GetFromReuqest($request, 'gender'),
            "description"         => $this->GetFromReuqest($request, 'description'),
            "age"                 => $this->GetFromReuqest($request, 'age'),
            "fav_author"          => $this->GetFromReuqest($request, 'fav_author'),
            "favorite_book_genre" => $this->GetFromReuqest($request, 'favorite_book_genre'),
            "worst_book"          => $this->GetFromReuqest($request, 'worst_book'),
            "fav_book"            => $this->GetFromReuqest($request, 'fav_book')
        ];

        $this->CRUD(User::class, ['id' => $id], 'update', $data);


        return $this->Move('back_with_message', null, 'success', 'info updated');
    }


    // ******************************* END USER  ****************************** //

    // ******************************* START MESSAGE  ****************************** //

    /**
     * Retrieve messages and user information to display in the message table view.
     *
     * This function retrieves messages and user information to populate the message table view.
     * It fetches the paginated messages and calculates the iteration count for the table view.
     *
     * @return \Illuminate\View\View The message table view with messages, user data, and iteration count
     */

    function messageTable()
    {
        if (auth()->check()) {
            $data = auth()->user();
        }

        $messages = $this->Select_column('paginate', Contacts::class, '*', null, 10, 'id', 'DESC');
        $iterationCount = ($messages->currentPage() - 1) * $messages->perPage();

        return view('admin.messageTable.messageTable', [
            'contacts' => $messages,
            'data' => $data,
            'iteration' => $iterationCount,
        ]);
    }

    /**
     * Perform a search for messages based on the provided query and search options.
     *
     * This function retrieves messages and user information based on the search query and options,
     * including user name, email, and message subject.
     * It constructs a paginated view with the search results and iteration count for the search message view.
     *
     * @param Request $request The HTTP request containing the search query and options
     * @return \Illuminate\View\View The search message view with the paginated search results and iteration count
     */

    public function searchMessage(Request $request)
    {
        $query = $request->input('query');
        $searchOption1 = $request->input('searchOption_1');
        $searchOption2 = $request->input('searchOption_2');

        $messagesQuery = Contacts::query();

        $messagesQuery->join('users', 'Contacts.user_id', '=', 'users.id');

        $messagesQuery->select('Contacts.*', 'users.name as user_name', 'users.email as user_email');

        $messagesQuery->where(function ($queryBuilder) use ($query, $searchOption1, $searchOption2) {
            $queryBuilder->where('users.name', 'LIKE', '%' . $query . '%'); // Search by user name

            if ($searchOption1 === 'byEmail') {
                $queryBuilder->orWhere('users.email', 'LIKE', '%' . $query . '%'); // Search by user email
            }

            if ($searchOption2 === 'bySubject') {
                $queryBuilder->orWhere('Contacts.subject', 'LIKE', '%' . $query . '%'); // Search by message subject
            }
        });

        $datas = $messagesQuery->paginate(12);

        $iterationCount = ($datas->currentPage() - 1) * $datas->perPage();

        return view('admin.messageTable.search.searchMessage', [
            'contacts' => $datas,
            'iteration' => $iterationCount

        ]);
    }

    /**
     * Delete a message after checking its status and return a relevant message.
     *
     * @param  string $id The encrypted ID of the message
     * @return \Illuminate\Http\RedirectResponse Returns a redirect response with a success or failure message
     *
     * This function first decrypts the provided ID using the Crypt facade.
     *  It then retrieves the status of the message from the Contacts table using the Select_column method.
     *  If the message status is 'unread' or 'replied', the function returns a redirect back with a failure message stating
     * "You can't delete unread or replied messages". Otherwise, it proceeds to delete the message from the Contacts table using
     *  the CRUD method with the 'delete' action. After successful deletion, it returns a redirect to the 'messageTable'
     *  route with a success message stating "Message deleted".
     */

    function deleteMessage($id)
    {
        $id = Crypt::decrypt($id);


        $message = $this->Select_column('first', Contacts::class, 'status', ['id' => $id]);

        if ($message->status == 'unread' || $message->status == 'replied') {
            return $this->Move('back_with_message', null, 'failed', 'You cant delete unread or replied message');
        } else {
            $this->CRUD(Contacts::class, ['id' => $id], 'delete', null);
            return $this->Move('redirect_with_message', 'messageTable', 'success', 'Message deleted');
        }
    }



    /**

     *Update the status of a message to "read" and retrieve the message data.
     *This function takes an encrypted message ID, decrypts it using the Crypt facade,
     *and then updates the status of the corresponding message to "read" in the Contacts table.
     *It achieves this by calling the CRUD method with the appropriate parameters. Subsequently,
     *it retrieves the message data using the provided ID and
     *passes it to the 'Admin/MessageTable/MessageRead/messageRead' view using the ViewWithData method,
     *which then returns the view along with the message data.

     *@param string $id The encrypted ID of the message
     *@return \Illuminate\View\View Returns the view with the message data
     */

    function messageRead($id)
    {
        $id = Crypt::decrypt($id);

        $updateStatus = [
            'status' => 'read',
        ];

        $this->CRUD(Contacts::class, ['id' => $id], 'update', $updateStatus);

        $data = $this->Select_column('first', Contacts::class, '*', ['id' => $id]);
        return $this->ViewWithData('admin.messageTable.messageRead.messageRead', 'data', $data);
    }

    // end (VIEW MESSAGE)


    // --------------- END MESSAGE (ON SIDEBAR) ---------------//


    // --------------- PROMOTE (ON SIDEBAR) ---------------//


    // promote page function that show all user (PROMOTE PAGE)

    function promote()
    {
        if (auth()->check()) {
            $data = auth()->user();
        }

        $users = $this->Select_column('paginate', User::class, '*', null, 10, 'id', 'DESC');
        $iterationCount = ($users->currentPage() - 1) * $users->perPage();

        return view('admin/promotion/promoteTable', [
            'users' => $users,
            'data' => $data,
            'iteration' => $iterationCount
        ]);
    }

    // end (PROMOTE PAGE)


    // promote page for a specific user (PROMOTE SPECIFIC USER)
    function promote_user($user_id)
    {
        $user = Auth::user();
        $data = $this->Select_column('first', User::class, '*', ['id' => $user_id]);

        return view('admin/promotion/editUserPromotion', [
            "data" => $data,
            "user" => $user
        ]);
    }

    // end (PROMOTE SPECIFIC USER)


    // promote account into admin FUNCTION (PROMOTE INTO ADMIN)

    function promoteAdmin($id)
    {
        $data = [
            'role' => 1
        ];
        $this->CRUD(User::class, ['id' => $id], 'update', $data);
        return redirect()->back()->with('success', 'Role Changed');
    }

    // end (PROMOTE INTO ADMIN)


    // promote account into user FUNCTION (PROMOTE INTO USER)

    function promoteUser($id)
    {
        $data = [
            'role' => 0
        ];
        $this->CRUD(User::class, ['id' => $id], 'update', $data);
        return redirect()->back()->with('success', 'Role Changed');
    }

    // end (PROMOTE INTO USER)


    // promote account into moderator FUNCTION (PROMOTE INTO MODERATOR)

    function promoteMode($id)
    {
        $data = [
            'role' => 2
        ];
        $this->CRUD(User::class, ['id' => $id], 'update', $data);
        return redirect()->back()->with('success', 'Role Changed');
    }

    // end (PROMOTE INTO MODERATOR)


    //searching in the promote table (SEARCH USER IN PROMOTE TABLE)


    public function search_promote(Request $request)
    {
        $query = $request->input('query');
        $searchOption1 = $request->input('searchOption_1');
        $searchOption3 = $request->input('searchOption_3');


        $conditions = [['name', 'LIKE', '%' . $query . '%']];

        if ($searchOption1 === 'byEmail') {
            $conditions = [['email', 'LIKE', '%' . $query . '%']];
        }


        if ($searchOption3 === 'byRole') {
            $conditions = [['role', 'LIKE', '%' . $query . '%']];
        }

        $datas = $this->Select_column('paginate', User::class, '*', $conditions, 12, 'id', 'DESC');
        $iterationCount = ($datas->currentPage() - 1) * $datas->perPage();


        return $this->ViewWithData('admin.promotion.search.searchUser', 'datas', $datas, 'iteration', $iterationCount);
    }
    //end (SEARCH USER IN PROMOTE TABLE)

    public function bookTable()
    {
        $books = Book::paginate(10);
        $data = Auth::user();
        return view('admin.books.bookTable', compact('books', 'data'));
    }

    public function deleteBook($id)
    {

        $this->CRUD(Book::class, ['id' => $id], 'delete');

        return redirect()->back()->with('success', 'Book Deleted');
    }

    public function editBookPage($id)
    {
        $data = Auth::user();
        $book = $this->Select_column('first', Book::class, '*', ['id' => $id]);
        return view('admin.books.editBook', compact('book', 'data'));
    }

    public function updateBook(Request $request, $id)
    {
        // Get the book cover image from the request
        $image = $request->book_cover;

        // Upload the book cover image and get the filename
        $filename = $image ? $this->uploadFile('image', $image, 'books_cover') : Book::find($id)->cover_image;

        // Get the PDF file from the request
        $pdfFile = $request->file('pdf_file');

        // Upload the PDF file and get the filename
        $pdf_name = $pdfFile ? $this->uploadFile('pdf', $pdfFile, 'pdfs') : Book::find($id)->pdf;
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

        $this->CRUD(Book::class, ['id' => $id], 'update', $data);

        return redirect()->route('bookTable')->with('success', 'Book Updated');
    }

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

        return view('admin.books.searchingAllBooks', [
            'books' => $books,
        ]);
    }
}
