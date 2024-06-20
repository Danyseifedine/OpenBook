<table class="min-w-max w-full table-auto">
    <thead>
        <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
            <th class="py-3 px-6 text-left">id</th>
            <th class="py-3 px-6 text-left">Cover</th>
            <th class="py-3 px-6 text-center">Name</th>
            <th class="py-3 px-6 text-center">Author</th>
            <th class="py-3 px-6 text-center">Category</th>
            <th class="py-3 px-6 text-center">Created at</th>
            <th class="py-3 px-6 text-center"></th>
        </tr>
    </thead>
    @if (session()->has('success'))
        <div class="error flex bg-green-100 rounded-lg p-4 mb-4 text-sm text-green-700" role="alert">
            <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                    d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                    clip-rule="evenodd"></path>
            </svg>
            <div>
                <span class="font-medium"></span> {{ session('success') }}
            </div>
        </div>
    @endif
    <tbody class="text-gray-600 text-sm font-light">

        @foreach ($books as $book)
            <tr class="border-b border-gray-200 hover:bg-gray-100">
                <td class="py-3 px-6 text-left whitespace-nowrap">
                    <div class="flex items-center">
                        <div>

                            <h1 class="text-xl">{{ $book->id }}</h1>
                        </div>
                    </div>
                </td>
                <td class="py-3 px-6 text-left">
                    <div class="flex items-center">
                        <div class="mr-2">
                            <div class="flex items-center justify-center">
                                <img class="w-20 h-20 rounded object-cover" style="display: block; margin: 0 auto;"
                                    src="{{ asset('books_cover/' . $book->cover_image) }}" alt="{{ $book->name }}">
                            </div>
                        </div>
                </td>
                <td class="py-3 px-6 text-center">
                    <div class="flex items-center justify-center">
                        <span class="font-semibold">{{ $book->name }}</span>
                    </div>
                </td>
                <td class="py-3 px-6 text-center">
                    <div class="flex items-center justify-center">
                        <span class="font-semibold">{{ $book->author }}</span>
                    </div>
                </td>
                <td class="py-3 px-6 text-center">
                    <div class="flex items-center justify-center">
                        <span class="font-semibold">{{ $book->category }}</span>
                    </div>
                </td>
                <td class="py-3 px-6 text-center">
                    <span class="py-1 px-3 rounded-full text-sm font-semibold">
                        {{ $book->created_at }}
                </td>
                <td class="py-3 px-6 text-center">
                    <div class="flex item-center justify-center">
                        <form action="{{ route('editBook', $book->id) }}" method="get">
                            @csrf
                            @method('get')

                            <button type="submit" href=""
                                class="w-4 mr-2 transform hover:text-purple-500 hover:scale-110">
                                <i class="ri-pencil-line text-xl"></i>
                            </button>
                        </form>

                        <form action="{{ route('deleteBook', $book->id) }}" method="post">
                            @csrf
                            @method('delete')

                            <button type="submit" class="w-4 mr-2 transform hover:text-purple-500 hover:scale-110">
                                <i class="ri-delete-bin-7-line text-xl"></i> </button>
                        </form>
                        <a href="{{ route('singleBook', $book->id) }}">
                            <i class="ri-eye-fill text-xl"></i>
                        </a>
                    </div>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>
