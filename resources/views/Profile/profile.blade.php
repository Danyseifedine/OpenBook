@extends('layouts.master')
@section('title', 'home')


@section('content')

    <link rel="stylesheet" href="{{ asset('css/profile.css') }}">

    @if (app()->getLocale() == 'ar')
        <style>
            * {
                font-family: "Changa", sans-serif !important;
            }
        </style>
    @endif

    <div class="max-w-4xl flex items-center h-auto 1:h-screen flex-wrap mx-auto my-32 1:my-0">

        <!--Main Col-->
        <div id="profile" class="w-full mb-5 w-3/5 rounded-1 shadow-2xl bg-white mx-6 1:mx-0  w-100">


            <div class="p-4 md:p-12 text-center">
                <!-- Image for mobile view-->

                @if ($data->ProfileImage)
                    <div class="block  rounded-full shadow-xl mx-auto -mt-16 h-48 w-48 bg-cover bg-center"
                        style="background-image: url('{{ asset('uploads/' . $data->ProfileImage) }}')"></div>
                @else
                    <div class="block  rounded-full shadow-xl mx-auto -mt-16 h-48 w-48 bg-cover bg-center"
                        style="background-image: url('{{ asset('uploads/default.jpg') }}')"></div>
                @endif

                @admin
                    <div class="flex justify-center gap-1 items-center">
                        <h1 class="text-3xl font-bold pt-8 1:pt-0">{{ $data->name }}</h1>
                        <p class="mode font-bold pt-9 1:pt-0 text-red-600">(Admin)</p>
                    </div>
                @endadmin

                @moderator
                    <div class="flex justify-center items-center gap-1">
                        <h1 class="text-2xl font-bold pt-8 1:pt-0">{{ $data->name }}</h1>
                        <p class="mode font-bold pt-9 1:pt-0 text-red-600">(Moderator)
                        </p>
                    </div>
                @endmoderator

                @user
                    <div>
                        <h1 class="text-2xl font-bold pt-8 1:pt-0">{{ $data->name }}</h1>
                    </div>
                @enduser

                <div class="mx-auto 1:mx-0 w-5/5 pt-3 border-b-2 border-blue-500 opacity-55"></div>
                <p class="text-profile pt-5 flex items-center gap-2"><i class="ri-mail-line text-blue-500"
                        style="font-size: 25px"></i>{{ $data->email }}</p>
                @if ($data->userPrivacy->show_description && $data->description !== null)
                    <p class="text-profile pt-5 text-xl pb-5 w-5/5 lg:w-4/5 sm:w-4/5 md:w-4/5" style="text-align: justify">
                        {{ $data->description }}
                    </p>
                @else
                    <p class="text-profile pt-5 text-3xl pb-5 w-5/5 color-grey-200 opacity-30" style="text-align: justify">
                        ...
                    </p>
                @endif

                <p class="text-2xl">@lang('messages.information')</p>
                <div class="mx-auto 1:mx-0 w-5/5 pt-1 border-b-2 border-blue-500 opacity-55"></div>

                @if ($data->userPrivacy->show_language && $data->language !== null)
                    <p class="text-profile flex items-center gap-2 pt-5">
                        <i class="bi bi-translate text-blue-500" style="font-size: 25px"></i>
                        <span>Language: {{ $data->language }}</span>
                    </p>
                @endif


                @if ($data->userPrivacy->show_country && $data->country !== null)
                    <p class="text-profile flex items-center gap-2"><i class="bi bi-globe-americas text-blue-500"
                            style="font-size: 25px"></i>Country: {{ $data->country }}</p>
                @endif
                @if ($data->userPrivacy->show_city && $data->city !== null)
                    <p class="text-profile flex items-center gap-2"><i class="ri-building-line text-blue-500"
                            style="font-size: 25px"></i>city: {{ $data->city }}</p>
                @endif

                @if ($data->userPrivacy->show_phone && $data->phone !== null)
                    <p class="text-profile flex items-center gap-2"><i class="bi bi-telephone text-blue-500"
                            style="font-size: 25px"></i>Phone: {{ $data->phone }}</p>
                @endif

                @if ($data->userPrivacy->show_birthday && $data->birthday !== null)
                    <p class="text-profile flex items-center gap-2"><i class="bi bi-calendar-week text-blue-500"
                            style="font-size: 25px"></i>birth: {{ $data->birthday }}</p>
                @endif

                @if ($data->userPrivacy->show_gender && $data->gender !== null)
                    @if ($data->gender == 'Male')
                        <p class="text-profile flex items-center gap-2"><i class="ri-men-line text-blue-500"
                                style="font-size: 25px"></i>Gender: {{ $data->gender }}</p>
                    @else
                        <p class="text-profile flex items-center gap-2"><i class="ri-women-line text-pink-600"
                                style="font-size: 25px"></i>Gender: {{ $data->gender }}</p>
                    @endif
                @endif
                <p class="text-2xl pt-5">@lang('messages.Books')</p>

                <div class="mx-auto 1:mx-0 w-5/5 pt-3 border-b-2 border-blue-500 opacity-55"></div>

                @if ($data->userPrivacy->show_favorite_book_genre && $data->favorite_book_genre !== null)
                    <p class="text-profile flex items-center gap-2 pt-5"><i class="ri-heart-fill text-blue-500"
                            style="font-size: 25px"></i>category: {{ $data->favorite_book_genre }}</p>
                @endif
                @if ($data->userPrivacy->show_worst_book && $data->worst_book !== null)
                    <p class="text-profile flex items-center gap-2"><i class="bi bi-x-lg text-blue-500"
                            style="font-size: 25px"></i>worst: {{ $data->worst_book }}</p>
                @endif
                @if ($data->userPrivacy->show_fav_book && $data->fav_book !== null)
                    <p class="text-profile flex items-center gap-2"><i class="ri-heart-fill text-blue-500"
                            style="font-size: 25px"></i>Fav book: {{ $data->fav_book }}</p>
                @endif
                <p class="text-2xl pt-5">@lang('messages.favorite_author')</p>

                <div class="mx-auto 1:mx-0 w-5/5 pt-3 border-b-2 border-blue-500 opacity-55"></div>
                @if ($data->userPrivacy->show_fav_auth && $data->fav_author !== null)
                    <p class="text-profile flex items-center pt-5 gap-2"><i class="bi bi-vector-pen text-blue-500"
                            style="font-size: 25px"></i>{{ $data->fav_author }}</p>
                @endif
                <div class="pt-12 pb-8">
                    <button class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-full">
                        <a href="{{ route('settings') }}">Edit profile</a> </button>
                </div>
            </div>
        </div>

        <p class="text-2xl text-center pt-5 m-5 mt-5">Downloaded books</p>

        <div class="flex flex-wrap justify-center justify-content-center w-full gap-12 mt-6">
            @foreach ($books as $book)
                <a href="{{ route('singleBook', $book->id) }}">
                    <div class="p-4 md:p-6 bg-white rounded-lg shadow-md mx-auto">
                        <h2 class="text-md font-semibold mb-2 text-center">{{ $book->name }}</h2>
                        @if ($book->cover_image)
                            <img src="{{ asset('books_cover/' . $book->cover_image) }}" alt="{{ $book->name }}"
                                style="height: 300px; width: 200px" class="object-cover rounded-md mb-4 mx-auto">
                        @endif
                    </div>
                </a>
            @endforeach
        </div>

        <!--Img Col-->
        <div class="">
            @if ($data->ProfileImage)
                <div class="block  hidden rounded-full shadow-xl bg-cover bg-center"
                    style="background-image: url('{{ asset('uploads/' . $data->ProfileImage) }}');width:355px;height:500px;border-radius:20px">
                </div>
            @else
                <div class="block  hidden rounded-full shadow-xl bg-cover bg-center"
                    style="background-image: url('{{ asset('uploads/default.jpg') }}');width:355px;height:500px;border-radius:20px">
                </div>
            @endif

        </div>
    </div>
@endsection
