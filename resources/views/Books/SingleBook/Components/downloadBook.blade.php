<div class="container" style="margin-top:150px">
    <a href="{{ url()->previous() }}"><i class="ri-arrow-left-line text-3xl pl-12"></i></a>
    <div class=" book_ flex flex-wrap gap-8 justify-center pt-5">
        <div>
            <img class="single_image_cover" src="{{ asset('books_cover/' . $book->cover_image) }}" alt="">
        </div>
        <div class="w-5/5 lg:w-3/5 md:w-3/5 sm:w-5/5">
            <h1 class="text-3xl lg:text-3xl md:text-3xl sm:text-2xl page-title">{{ $book->name }}</h1>
            <h1 class="rating flex items-center jutify-center gap-2 page-title text-lg mb-3">@lang('messages.World-Rating')
                @if ($book->world_rate === 10)
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-lg"></i>
                    <i class="ri-star-fill text-lg"></i>
                    <i class="ri-star-fill text-lg"></i>
                    <i class="ri-star-fill text-lg"></i>
                @endif
                @if ($book->world_rate === 15)
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-half-line text-lg text-yellow-300"></i>
                    <i class="ri-star-fill text-lg"></i>
                    <i class="ri-star-fill text-lg"></i>
                    <i class="ri-star-fill text-lg"></i>
                @endif
                @if ($book->world_rate === 20)
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-lg"></i>
                    <i class="ri-star-fill text-lg"></i>
                    <i class="ri-star-fill text-lg"></i>
                @endif
                @if ($book->world_rate === 25)
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-half-line text-lg text-yellow-300"></i>
                    <i class="ri-star-fill text-lg"></i>
                    <i class="ri-star-fill text-lg"></i>
                @endif
                @if ($book->world_rate === 30)
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-lg"></i>
                    <i class="ri-star-fill text-lg"></i>
                @endif
                @if ($book->world_rate === 35)
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-half-line text-lg text-yellow-300"></i>
                    <i class="ri-star-fill text-lg"></i>
                @endif
                @if ($book->world_rate === 40)
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-lg"></i>
                @endif
                @if ($book->world_rate === 45)
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-half-line text-lg text-yellow-300"></i>
                @endif
                @if ($book->world_rate === 50)
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                    <i class="ri-star-fill text-yellow-300 text-xl"></i>
                @endif
            </h1>
            <div class="author rounded">
                <div class="rounded text-lg lg:text-2xl md:text-2xl sm:text-1xl p-1">@lang('messages.by') <span
                        class="font-bold">{{ $book->author }}</span>
                </div>
                <div class="text-lg lg:text-md md:text-md sm:text-md p-1">@lang('messages.Pages') {{ $book->pages }} |
                    @if (App::getLocale() == 'ar')
                        {{ $book->language_arabic }} |
                    @else
                        {{ $book->language }} |
                    @endif
                    @if (App::getLocale() == 'ar')
                        <span class="text-red-500">{{ $book->category_arabic }}</span>
                    @else
                        <span class="text-red-500">{{ $book->category }}</span>
                    @endif
                </div>
                <div class="text-lg lg:text-md md:text-md sm:text-md p-1">@lang('messages.published-date'):
                    {{ date('Y', strtotime($book->publication_date)) }}
                </div>
            </div>
            <div class="description page-title text-md text-justify mt-2 p-1 rounded">
                @if (App::getLocale() == 'ar')
                    <p class="font-bold text-lg">{{ $book->description_arabic }}</p>
                @else
                    {{ $book->description }}
                @endif
            </div>
            @auth
                <div class="flex gap-2">
                    <div class="download-container">
                        @if ($book->pdf)
                            <a href="{{ route('downloadPdf', ['bookId' => $book->id]) }}">
                                <button
                                    class="bg-blue-500 text-white p-2 hover:bg-blue-700 mt-8 rounded">@lang('messages.Download-PDF')</button>
                                <div class="pt-1">@lang('messages.download') {{ $book->download_count }}</div>
                            </a>
                        @else
                            <a href="">
                                <p class="text-red-600 mt-12">Book is down for security reason </p>
                            </a>
                        @endif
                    </div>
                    <div>
                        @if ($book->pdf)
                            <a href="{{ route('embedPdf', encrypt($book->id)) }}">
                                <button
                                    class="bg-blue-500 text-white p-2 hover:bg-blue-700 mt-8 rounded">@lang('messages.Read-book')</button>
                            </a>
                        @else
                        @endif
                    </div>
                </div>
            @endauth
            @guest
                <div class="flex gap-2">
                    <div class="download-container">
                        <p class="bg-blue-900 text-white p-2 mt-8" style="cursor:no-drop">@lang('messages.Download-PDF')</p>
                    </div>
                    <div>
                        <p class="bg-blue-900 text-white p-2 mt-8" style="cursor:no-drop">@lang('messages.Read-book')</p>
                    </div>
                </div>
                <div class="flex flex-rows items-center mt-2 gap-1 text-red-600">
                    <i class="ri-error-warning-line" style="font-size:25px"></i>
                    <p>@lang('messages.cant_download')</p>
                </div>
            @endguest
        </div>
    </div>
</div>
