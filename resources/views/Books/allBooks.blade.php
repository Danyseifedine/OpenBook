@extends('layouts.master')
@section('title', 'home')

<link rel="stylesheet" href="{{ asset('css/books.css') }}">

@section('content')
    <div class="container" style="margin-top:120px">
        <h1 class="text-4xl mb-3 pb-5 page-title">@lang('messages.Allbooks')
        </h1>
    </div>

    @if (session()->has('success'))
        <div class="notification" style="position: fixed;">
            @lang('messages.welcome') {{ $data->name }}! 👋
            <div class="notification__progress">
                <div class="notification__progress-bar"></div>
            </div>
        </div>
    @endif

    <section class="container mb-12">
        @if (app()->getLocale() == 'en')
            <form class="flex items-center mb-5" method="get" action="">
                <label for="simple-search" class="sr-only">Search</label>
                <div class="relative w-full">
                    <div class="absolute top-4 right-5">
                        <svg class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="currentColor" viewBox="0 0 20 20"
                            xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                                clip-rule="evenodd"></path>
                        </svg>
                    </div>
                    <div>

                        <div class="p-1">
                            <input type="text" id="searchQuery"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                placeholder="Search by name by default...">
                            <div id=""></div>
                        </div>


                        <div class="mt-5 flex gap-5 flex-wrap p-1">
                            <label class="inline-flex items-center mt-3">
                                <input type="checkbox" class="form-checkbox rounded h-5 w-5 text-orange-600"
                                    name="searchOption_1" id="byAuthor" value="byAuthor"><span
                                    class="ml-2 page-title">@lang('messages.author')</span>
                            </label>
                            <label class="inline-flex items-center mt-3">
                                <input type="checkbox" class="form-checkbox rounded h-5 w-5 text-orange-600"
                                    name="searchOption_2" id="byPublished_date" value="byPublished_date"><span
                                    class="ml-2 page-title">@lang('messages.date')</span>
                            </label>
                            <label class="inline-flex items-center mt-3">
                                <input type="checkbox" class="form-checkbox rounded h-5 w-5 text-orange-600"
                                    name="searchOption_3" id="byLanguage" value="byLanguage"><span
                                    class="ml-2 page-title">@lang('messages.language')</span>
                            </label>
                            <label class="inline-flex items-center mt-3">
                                <input type="checkbox" class="form-checkbox rounded h-5 w-5 text-orange-600"
                                    name="searchOption_4" id="byPages" value="byPages"><span
                                    class="ml-2 page-title">@lang('messages.pages')</span>
                            </label>

                        </div>
                    </div>

                </div>
            </form>
        @else
            <form class="flex items-center mb-5" method="get" action="">
                <label for="simple-search" class="sr-only">Search</label>
                <div class="relative w-full">
                    <div class="absolute top-4 left-5">
                        <svg class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="currentColor" viewBox="0 0 20 20"
                            xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                                clip-rule="evenodd"></path>
                        </svg>
                    </div>
                    <div>

                        <div class="p-1">
                            <input type="text" id="searchQuery"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                placeholder="البحث حسب الاسم افتراضيًا...">
                            <div id=""></div>
                        </div>


                        <div class="mt-5 flex gap-5 flex-wrap p-1">
                            <label class="inline-flex items-center mt-3">
                                <span class="ml-2 page-title">@lang('messages.author')</span>
                                <input type="checkbox" class="form-checkbox rounded h-5 w-5 text-orange-600"
                                    name="searchOption_1" id="byAuthor" value="byAuthor">
                            </label>
                            <label class="inline-flex items-center mt-3">
                                <span class="ml-2 page-title">@lang('messages.date')</span>
                                <input type="checkbox" class="form-checkbox rounded h-5 w-5 text-orange-600"
                                    name="searchOption_2" id="byPublished_date" value="byPublished_date">
                            </label>
                            <label class="inline-flex items-center mt-3">
                                <span class="ml-2 page-title">@lang('messages.language')</span>
                                <input type="checkbox" class="form-checkbox rounded h-5 w-5 text-orange-600"
                                    name="searchOption_3" id="byLanguage" value="byLanguage">
                            </label>
                            <label class="inline-flex items-center mt-3">
                                <span class="ml-2 page-title">@lang('messages.pages')</span>
                                <input type="checkbox" class="form-checkbox rounded h-5 w-5 text-orange-600"
                                    name="searchOption_4" id="byPages" value="byPages">
                            </label>

                        </div>
                    </div>

                </div>
            </form>
        @endif

        <div class="grid grid-cols-2 lg:grid-cols-4 md:grid-cols-4 sm:grid-cols-3 gap-5 p-2" id="ajax_search_result">

            @foreach ($books as $book)
                <div class="all p-2 rounded" id="">
                    <div>
                        <a href="{{ route('singleBook', $book->id) }}"><img class="book-cover col-span-1"
                                src="{{ asset('books_cover/' . $book->cover_image) }}" alt="">
                            </img></a>
                    </div>
                    <div class="book-name">
                        <p class="text-sm lg:text-md font-light text-center md:text-md sm:text-base pt-3 p-1">
                            {{ $book->name }}</p>
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
                        <a href="{{ route('singleBook', $book->id) }}"><button
                                style="width: 100% !important;position: relative;;bottom:0"
                                class="btn bg-blue-700 rounded text-white p-1 hover:bg-blue-800">@lang('messages.Details')</button></a>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="mt-5 mb-5 p-2">
            {{ $books->links('Paginator.paginator') }}
        </div>
    </section>
    </section>
    <script>
        $(document).ready(function() {

            $('input[type="checkbox"]').on('click', function() {
                if ($(this).prop('checked')) {
                    $('input[type="checkbox"]').not(this).prop('checked', false);
                }
            });

            $('#searchQuery').on('keyup', function() {
                var query = $(this).val().trim();
                var token = "{{ csrf_token() }}";
                {
                    $.ajax({
                        url: "{{ route('searchBook') }}",
                        method: "GET",
                        headers: {
                            "X-CSRF-Token": token
                        },
                        data: {
                            _token: token,
                            query: query,
                            searchOption_1: $('#byAuthor').is(':checked') ? 'byAuthor' : '',
                            searchOption_2: $('#byPublished_date').is(':checked') ?
                                'byPublished_date' : '',
                            searchOption_3: $('#byLanguage').is(':checked') ? 'byLanguage' : '',
                            searchOption_4: $('#byPages').is(':checked') ? 'byPages' : '',

                        },
                        success: function(data) {
                            $('#ajax_search_result').html(data);
                        }
                    });
                }
            });
        });
    </script>
@endsection
