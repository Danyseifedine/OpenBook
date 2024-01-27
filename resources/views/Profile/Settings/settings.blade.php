@extends('layouts.master')
@section('title', 'home')


@section('content')
    <link rel="stylesheet" href="{{ asset('css/setting.css') }}">


    <div class="" style="min-height:100vh;padding-top:150px;padding-bottom:150px">

        @include('Profile.Settings.Session&Errors.messages')

        <div class="container">
            <div class="title pb-3">
                <h1 class="text-3xl">&nbsp; @lang('messages.user_setting') </h1>
            </div>
            <div class="all grid lg:grid-cols-5 md:grid-cols-2 gap-5 p-4">
                @include('Profile.Settings.Components.profilePhoto')
                @include('Profile.Settings.Components.profileInformation')
                @include('Profile.Settings.Components.informationPrivacy')
                @include('Profile.Settings.Components.updatePassword')
            </div>
        </div>
    </div>

    <script src="{{ asset('js/Settings/Settings.js') }}"></script>
@endsection
