@extends('layouts.master')
@section('title', 'home')
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

<link rel="stylesheet" href="{{ asset('css/home.css') }}">


{{-- <link rel="stylesheet" href="{{ asset('css/Library/swiper-bundle.min.css') }}"> --}}

@if (app()->getLocale() == 'ar')
    <style>
        * {
            font-family: "Changa", sans-serif !important;
        }
    </style>
@endif

@section('content')

    @if ($errors->has('email'))
        <div class="error flex bg-red-100 rounded-lg p-4 mb-4 text-sm text-red-700" role="alert" style="position: fixed">
            <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                    d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                    clip-rule="evenodd"></path>
            </svg>
            <div>
                <span class="font-medium"></span> @lang('messages.email_exists')
            </div>
        </div>
    @endif

    @if (session()->has('success'))
        <div class="notification fixed">
            @lang('messages.welcome') {{ $data->name }}! 👋
            <div class="notification__progress">
                <div class="notification__progress-bar"></div>
            </div>
        </div>
    @endif

    @if (session()->has('fail'))
        <div class="error flex bg-red-100 rounded-lg p-4 mb-4 text-sm text-red-700" role="alert" style="position: fixed">
            <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                    d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                    clip-rule="evenodd"></path>
            </svg>
            <div>
                <span class="font-medium"></span> @lang('messages.invalidCredentials')
            </div>
        </div>
    @endif

    @if (session()->has('inactive'))
        <div class="error flex bg-red-100 rounded-lg p-4 mb-4 text-sm text-red-700" role="alert" style="position: fixed">
            <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                    d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                    clip-rule="evenodd"></path>
            </svg>
            <div>
                <span class="font-medium"></span> {{ session('inactive') }}
            </div>
        </div>
    @endif

    @if (session()->has('denied'))
        <div class="error flex bg-red-100 rounded-lg p-4 mb-4 text-sm text-red-700" role="alert" style="position: fixed">
            <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                    d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                    clip-rule="evenodd"></path>
            </svg>
            <div>
                <span class="font-medium"></span> {{ session('denied') }}
            </div>
        </div>
    @endif

    @if (session()->has('failed_To_send_message'))
        <div class="error flex bg-red-100 rounded-lg p-4 mb-4 text-sm text-red-700" role="alert" style="position: fixed">
            <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                    d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                    clip-rule="evenodd"></path>
            </svg>
            <div>
                <span class="font-medium"></span> @lang('messages.failed_To_send_message')
            </div>
        </div>
    @endif
    @if (session()->has('sent'))
        <div class="notification">
            @lang('messages.MessageSent')
            <div class="notification__progress">
                <div class="notification__progress-bar"></div>
            </div>
        </div>
    @endif


    <!--==================== HOME ====================-->

    @include('home.components.firstSection')

    <!--==================== SERVICES ====================-->

    @include('home.components.services')

    <!--==================== SOON BOOK SWIPER ====================-->

    @include('home.components.bookSwiper')


    <!--==================== CONTACT US ====================-->

    @include('home.components.contacts')


    {{-- scripts --}}

    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

    <script src="{{ asset('js/library/scrollreveal.min.js') }}"></script>

    <script src="{{ asset('js/home/others.js') }}"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>


@endsection
