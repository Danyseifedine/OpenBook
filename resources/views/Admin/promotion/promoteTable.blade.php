@extends('admin.partiels.sidebar')


@section('section')
    <section class="home-section">
        <!-- component -->
        <div class="overflow-x-auto">

            <div class="min-w-screen min-h-screen bg-gray-100 flex justify-center bg-gray-100 font-sans overflow-hidden">
                <div class="w-full lg:w-5/6">
                    <div class="flex justify-between">
                        <div class="text">User</div>
                        <div class="text-xl flex justify-center items-center" style=";color:green;border-radius:10px">
                            active
                            user</div>
                    </div>

                    <!-- Add this form above the table -->
                    <form class="flex items-center mb-5" method="get" action="">
                        <label for="simple-search" class="sr-only">Search</label>
                        <div class="relative w-full">
                            <div class="absolute top-3 right-5">
                                <svg class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="currentColor"
                                    viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                        d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                                        clip-rule="evenodd"></path>
                                </svg>
                            </div>
                            <div>
                                <div>
                                    <input type="text" id="searchQuery"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                        placeholder="Search...">
                                </div>
                                <div class="mt-5 flex gap-5">
                                    <label class="inline-flex items-center mt-3">
                                        <input type="checkbox" class="form-checkbox h-5 w-5 text-orange-600"
                                            name="searchOption_1" id="byEmail" value="byEmail"><span
                                            class="ml-2 text-gray-700">Email</span>
                                    </label>

                                    <label class="inline-flex items-center mt-3">
                                        <input type="checkbox" class="form-checkbox h-5 w-5 text-orange-600"
                                            name="searchOption_3" id="byRole" value="byRole"><span
                                            class="ml-2 text-gray-700">Role</span>
                                    </label>
                                </div>
                            </div>

                        </div>
                    </form>

                    <div class="bg-white shadow-md rounded my-6" id="ajax_search_result">
                        <table class="min-w-max w-full table-auto">
                            <thead>
                                <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
                                    <th class="py-3 px-6 text-left">id</th>
                                    <th class="py-3 px-6 text-center">email</th>
                                    <th class="py-3 px-6 text-center">role</th>
                                    <th class="py-3 px-6 text-center"></th>
                                </tr>
                            </thead>
                            @if (session()->has('success'))
                                <div class="error flex bg-green-100 rounded-lg p-4 mb-4 text-sm text-green-700"
                                    role="alert">
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
                            <tbody class="text-gray-600 text-sm font-light">

                                @foreach ($users as $user)
                                    <tr class="border-b border-gray-200 hover:bg-gray-100">
                                        <td class="py-3 px-6 text-left whitespace-nowrap">
                                            <div class="flex items-center">
                                                <div>

                                                    <h1 class="text-xl">{{ ++$iteration }}</h1>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="py-3 px-6 text-center">
                                            <div class="flex items-center justify-center">
                                                <span class="font-semibold">{{ $user->email }}</span>
                                            </div>
                                        </td>
                                        <td class="py-3 px-6 text-center">
                                            <span
                                                class="bg-purple-200 text-purple-600 py-1 px-3 rounded-full text-xs font-semibold">
                                                @if ($user->role === 0)
                                                    User
                                                @endif

                                                @if ($user->role === 1)
                                                    Admin
                                                @endif
                                                @if ($user->role === 2)
                                                    Moderator
                                                @endif
                                            </span>
                                        </td>

                                        <td class="py-3 px-6 text-center">
                                            <div class="flex item-center justify-center">
                                                <form action="{{ route('promote_user', $user->id) }}" method="get">
                                                    @csrf
                                                    @method('get')

                                                    <a href="{{ route('promote_user', $user->id) }}"
                                                        class="w-4 mr-2 transform hover:text-purple-500 hover:scale-110">
                                                        <i class="bi bi-person-workspace text-xl"></i>
                                                    </a>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>

                        <div class="p-5">
                            {{ $users->links() }}
                        </div>
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

                                    if (query === '') {
                                        return
                                    } else {
                                        $.ajax({
                                            url: "{{ route('search_promote') }}",
                                            method: "GET",
                                            headers: {
                                                "X-CSRF-Token": token
                                            },
                                            data: {
                                                _token: token,
                                                query: query,
                                                searchOption_1: $('#byEmail').is(':checked') ? 'byEmail' : '',
                                                searchOption_3: $('#byRole').is(':checked') ? 'byRole' : '',
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
