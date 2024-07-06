@extends('layouts.master')
@section('title', 'home')


@section('content')
    <link rel="stylesheet" href="{{ asset('css/setting.css') }}">

    @if (app()->getLocale() == 'ar')
        <style>
            * {
                font-family: "Changa", sans-serif !important;
            }
        </style>
    @endif

    <div class="" style="min-height:100vh;padding-top:150px;padding-bottom:150px">

        @include('Profile.Settings.Session&Errors.messages')

        <div class="container">
            <div class="title pb-3">
                <h1 class="text-3xl">&nbsp; @lang('messages.user_setting') </h1>
            </div>
            <div class="all grid lg:grid-cols-5 md:grid-cols-2 gap-5 p-4">
                @include('profile.settings.components.profilePhoto')
                @include('profile.settings.components.profileInformation')
                @include('profile.settings.components.informationPrivacy')
                @include('profile.settings.components.updatePassword')
            </div>
        </div>
    </div>

    <script src="{{ asset('js/settings/settings.js') }}"></script>
@endsection
