@extends('layoutS.master')
@section('title', 'home')

<link rel="stylesheet" href="{{ asset('css/books.css') }}">

@if (session()->has('success'))
    <div class="notification" style="position: fixed;">
        @lang('messages.welcome') {{ $data->name }}! 👋
        <div class="notification__progress">
            <div class="notification__progress-bar"></div>
        </div>
    </div>
@endif

@section('content')
    @include('Books.SingleBook.Components.downloadBook')
    @include('Books.SingleBook.Components.suggestedBook')
    @if (count($authorBooks) !== 0)
    @include('Books.SingleBook.Components.bookWithSameAuthor')
    @endif
    @include('Books.SingleBook.Components.commentSection')
@endsection
