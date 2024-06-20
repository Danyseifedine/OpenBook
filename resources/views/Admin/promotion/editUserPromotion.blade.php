@extends('admin.partiels.sidebar')


@section('section')
    <section class="home-section">
        <!-- component -->
        <div class="overflow-x-auto">

            <div class="min-w-screen min-h-screen bg-gray-100 flex justify-center bg-gray-100 font-sans overflow-hidden">
                <div class="w-full lg:w-5/6">

                    @if (session()->has('success'))
                        <div class="error flex bg-green-100 rounded-lg p-4 mb-4 text-sm text-green-700" role="alert">
                            <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20"
                                xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                                    clip-rule="evenodd"></path>
                            </svg>
                            <div>
                                <span class="font-medium"></span> {{ session('success') }}
                            </div>
                        </div>
                    @endif

                    <div class="flex justify-between">
                        <div class="text">{{ $data->name }}</div>
                        @if ($data->active == 'active')
                            <div class="text-xl flex justify-center items-center" style=";color:green;border-radius:10px">
                                Active
                            </div>
                        @else
                            <div class="text-xl flex justify-center items-center" style=";color:red;border-radius:10px">
                                Inactive
                            </div>
                        @endif
                    </div>
                    <div class="flex justify-center items-center bg-white p-5 rounded" style="min-height: 80vh">
                        <div class="flex justify-center items-center gap-10">
                            <div class="flex flex-col">
                                <p class="text-xl">User name : {{ $data->name }}</p>
                                <p class="text-xl">User email : {{ $data->email }}</p>
                                <hr>
                                <br>
                                @if ($data->role == 0)
                                    <p class="text-xl">User role : <span class="text-red-500">User</span></p>
                                @endif
                                @if ($data->role == 1)
                                    <p class="text-xl">User role : <span class="text-red-500">Admin</span></p>
                                @endif
                                @if ($data->role == 2)
                                    <p class="text-xl">User role : <span class="text-red-500">Moderator</span></p>
                                @endif
                            </div>
                            <div class="flex flex-col">
                                <i class="bi bi-arrow-right text-8xl text-blue-500"></i>
                            </div>
                            <div>
                                <p class="text-2xl">Promote to: </p>
                                <hr>
                                @if ($data->role == 0)
                                    <div class="flex gap-2">
                                        <form action="{{ route('promoteMode', $data->id) }}" method="post">
                                            @csrf
                                            @method('post')
                                            <button class="bg-blue-500 p-3 mt-2 rounded text-white">Moderator</button>
                                        </form>
                                        <form action="{{ route('promoteAdmin', $data->id) }}" method="post">
                                            @csrf
                                            @method('post')
                                            <button class="bg-blue-500 p-3 mt-2 rounded text-white">Admin</button>
                                        </form>
                                    </div>
                                @endif
                                @if ($data->role == 1)
                                    <div class="flex gap-2">
                                        <form action="{{ route('promoteMode', $data->id) }}" method="post">
                                            @csrf
                                            @method('post')
                                            <button class="bg-blue-500 p-3 mt-2 rounded text-white">Moderator</button>
                                        </form>
                                        <form action="{{ route('promoteUser', $data->id) }}" method="post">
                                            @csrf
                                            @method('post')
                                            <button class="bg-blue-500 p-3 mt-2 rounded text-white">User</button>
                                        </form>
                                    </div>
                                @endif
                                @if ($data->role == 2)
                                    <div class="flex gap-2">
                                        <form action="{{ route('promoteAdmin', $data->id) }}" method="post">
                                            @csrf
                                            @method('post')
                                            <button class="bg-blue-500 p-3 mt-2 rounded text-white">Admin</button>
                                        </form>
                                        <form action="{{ route('promoteUser', $data->id) }}" method="post">
                                            @csrf
                                            @method('post')
                                            <button class="bg-blue-500 p-3 mt-2 rounded text-white">User</button>
                                        </form>
                                    </div>
                                @endif

                            </div>
                        </div>
                    </div>
                </div>
            @endsection
