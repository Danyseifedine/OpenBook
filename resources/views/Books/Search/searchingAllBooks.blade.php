<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    @foreach ($books as $book)
        <div class="all p-2 rounded" id="ajax_search_result_book">
            <div>
                <a href="{{ route('singleBook', $book->id) }}"><img class="book-cover col-span-1"
                        src="{{ asset('books_cover/' . $book->cover_image) }}" alt=""></a>
                </img>
            </div>
            <div class="book-name">
                <p class="text-sm lg:text-md font-light text-center md:text-md sm:text-base pt-3 p-1">
                    {{ $book->name }}</p>
            </div>
            <div class="line"></div>
            <div>
                <p class="text-sm lg:text-lg font-light text-center md:text-lg m-0 p-0 sm:text-base pt-2 text-red-500 p-1"
                    style="line-height: 0.8rem">{{ $book->category }}</p>
            </div>
            <div class="p-1 pt-1 text-center">
                @if ($book->world_rate === 10)
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                @endif
                @if ($book->world_rate === 15)
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-half-line text-sm text-yellow-300"></i>
                    <i class="ri-star-fill text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                @endif
                @if ($book->world_rate === 20)
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                @endif
                @if ($book->world_rate === 25)
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-half-line text-sm text-yellow-300"></i>
                    <i class="ri-star-fill text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                @endif
                @if ($book->world_rate === 30)
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                @endif
                @if ($book->world_rate === 35)
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-half-line text-sm text-yellow-300"></i>
                    <i class="ri-star-fill text-sm"></i>
                @endif
                @if ($book->world_rate === 40)
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-sm"></i>
                @endif
                @if ($book->world_rate === 45)
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-half-line text-sm text-yellow-300"></i>
                @endif
                @if ($book->world_rate === 50)
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                    <i class="ri-star-fill text-yellow-300 text-sm"></i>
                @endif
            </div>
            <div class="p-1 text-center	">
                <a href="{{ route('singleBook', $book->id) }}"><button style="width: 100% !important"
                        class="btn bg-blue-700 rounded text-white p-1 hover:bg-blue-800">Details</button></a>
            </div>
        </div>
    @endforeach
</body>

</html>
