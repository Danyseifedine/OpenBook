@extends('layouts.master')
@section('title', 'home')

<link rel="stylesheet" href="{{ asset('css/books.css') }}">

@if (app()->getLocale() == 'ar')
    <style>
        * {
            font-family: "Changa", sans-serif !important;
        }
    </style>
@endif

@if (session()->has('success'))
    <div class="notification" style="position: fixed;">
        @lang('messages.welcome') {{ $data->name }}! 👋
        <div class="notification__progress">
            <div class="notification__progress-bar"></div>
        </div>
    </div>
@endif

@section('content')
    @include('books.singleBook.components.downloadBook')
    @include('books.singleBook.components.suggestedBook')
    @if (count($authorBooks) !== 0)
        @include('books.singleBook.components.bookWithSameAuthor')
    @endif
    @include('books.singleBook.components.commentSection')
@endsection
