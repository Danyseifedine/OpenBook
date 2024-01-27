<section class="container p-1">
    <h1 class="mt-12 text-xl lg:text-2xl md:text-2xl sm:text-2xl">@lang('messages.Books-with-the-Same-Author')</h1>
    <div class="grid grid-cols-2 lg:grid-cols-4 md:grid-cols-4 sm:grid-cols-3 gap-5 p-2 mt-5">

        @foreach ($authorBooks as $authorBook)
            @if ($authorBook->author == $book->author)
                <div class="all p-2 rounded" id="">
                    <div>
                        <a href="{{ route('singleBook', $authorBook->id) }}"><img class="book-cover col-span-1"
                                src="{{ asset('books_cover/' . $authorBook->cover_image) }}" alt="">
                            </img></a>
                    </div>
                    <div class="book-name">
                        <p class="text-sm lg:text-md font-light text-center md:text-md sm:text-base pt-3 p-1">
                            {{ $authorBook->name }}</p>
                    </div>
                    <div class="line"></div>
                    <div>
                        @if (app()->getLocale() == 'en')
                            <p class="text-sm lg:text-lg font-light text-center md:text-lg m-0 p-0 sm:text-base pt-2 text-red-500 p-1"
                                style="line-height: 0.8rem">{{ $book->category }}</p>
                        @else
                            <p class="text-sm lg:text-lg font-light text-center md:text-lg m-0 p-0 sm:text-base pt-2 text-red-500 p-1"
                                style="line-height: 0.8rem">{{ $book->category_arabic }}</p>
                        @endif
                    </div>
                    <div class="p-1 pt-1 text-center">
                        @if ($authorBook->world_rate === 10)
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                        @endif
                        @if ($authorBook->world_rate === 15)
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-half-line text-sm text-yellow-300"></i>
                            <i class="ri-star-fill text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                        @endif
                        @if ($authorBook->world_rate === 20)
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                        @endif
                        @if ($authorBook->world_rate === 25)
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-half-line text-sm text-yellow-300"></i>
                            <i class="ri-star-fill text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                        @endif
                        @if ($authorBook->world_rate === 30)
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                        @endif
                        @if ($authorBook->world_rate === 35)
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-half-line text-sm text-yellow-300"></i>
                            <i class="ri-star-fill text-sm"></i>
                        @endif
                        @if ($authorBook->world_rate === 40)
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-sm"></i>
                        @endif
                        @if ($authorBook->world_rate === 45)
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-half-line text-sm text-yellow-300"></i>
                        @endif
                        @if ($authorBook->world_rate === 50)
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                            <i class="ri-star-fill text-yellow-300 text-sm"></i>
                        @endif
                    </div>
                    <div class="p-1 text-center	">
                        <a href="{{ route('singleBook', $authorBook->id) }}"><button
                                style="width: 100% !important;position: relative;;bottom:0"
                                class="btn bg-blue-700 rounded text-white p-1 hover:bg-blue-800">@lang('messages.Details')</button></a>
                    </div>
                </div>
            @endif
        @endforeach
    </div>
</section>
