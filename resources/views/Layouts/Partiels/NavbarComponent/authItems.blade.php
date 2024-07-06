{{-- This view is for the navbar and includes available items for the authenticated user --}}

<meta name="csrf-token" content="{{ csrf_token() }}">

@auth
    <li class="dropdown__item">

        <div class="nav__link dropdown__button">
            @if ($data->ProfileImage)
                <div class="block rounded-full shadow-xl bg-cover bg-center"
                    style="width: 40px; height: 40px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 50%;
        background-image: url('{{ asset('uploads/' . $data->ProfileImage) }}')">
                </div>
            @else
                <div class="block rounded-full shadow-xl bg-cover bg-center"
                    style="width: 40px; height: 40px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 50%;
                background-image: url('{{ asset('uploads/default.jpg') }}')">
                </div>
            @endif
        </div>

        <div class="dropdown__container">
            <div class="dropdown__content">
                <div class="dropdown__group">
                    <div class="dropdown__icon">
                        <i class="ri-map-pin-user-fill"></i>
                    </div>

                    <span class="dropdown__title">@lang('messages.Me')</span>

                    <ul class="dropdown__list">
                        <li>
                            <a href="{{ route('profile') }}" class="dropdown__link">@lang('messages.Profile')</a>
                        </li>
                        <li>
                            <a href="{{ route('settings') }}" class="dropdown__link">@lang('messages.Setting')</a>
                        </li>
                        <li>
                            <a href="" class="dropdown__link"
                                onclick="event.preventDefault(); document.getElementById('logout-form').submit();">@lang('messages.logout')</a>
                        </li>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                            @method('get')
                        </form>
                    </ul>
                </div>
            </div>
        </div>
    </li>

@endauth
<div class="language-selector nav__link">
    <div class="lang-menu">
        <span class="lang-menu-icon flex items-center gap-1 text-2xl"><i class="ri-translate-2"></i></span>
        <ul class="lang-options">
            <li>
                <a href="{{ route('languageConvert', 'en') }}" class="toggle-ltr">@lang('messages.English')</a>
            </li>
            <li>
                <a href="{{ route('languageConvert', 'ar') }}" class="toggle-rtl" data-rtl="false">@lang('messages.Arabic')</a>
            </li>
        </ul>
    </div>
</div>

<li>
    <a href="#" id="change-mode" class="nav__link text-2xl"> <i id="theme-icon" class="ri-moon-line"></i>
    </a>
</li>
<li>
    <button onclick="openSearchModal()" class="nav__link text-2xl"><i class="ri-search-eye-line"></i></button>
</li>

<!-- Search Modal -->
<div id="searchModal" class="fixed inset-0 bg-blue-100 bg-opacity-75 flex items-center justify-center hidden">
    <div class="bg-white p-10 rounded-lg shadow-lg w-2/4">
        <span class="close cursor-pointer text-xl font-bold float-right mb-5"
            onclick="closeSearchModal()">&times;</span>
        <form class="search-form mt-4" method="get" action="">
            <label for="searchQuery" class="sr-only">Search</label>
            <div class="relative w-full">
                <div class="absolute top-3 left-3">
                </div>
                <input type="text" id="searchUser" name="query" placeholder="Search..."
                    class="search-input bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-2.5">
            </div>
        </form>
        <div class="mt-4 p-4 border border-gray-300 rounded-lg text-gray-500 overflow-y-auto" style="max-height: 600px;"
            id="ajax_search_result">
            No results found. Please try a different search query.
        </div>
    </div>
</div>
</ul>

<script>
    $(document).ready(function() {
        $("#inboxClick").click(function() {
            $("#showMessage").slideToggle("slow");
        });

        $('#searchUser').on('keyup', function() {
            var query = $(this).val().trim();
            var token = $('meta[name="csrf-token"]').attr('content');

            if (query === '') {
                return
            } else {
                try {
                    $.ajax({
                        url: "{{ route('searchOtherUser') }}",
                        method: "GET",
                        headers: {
                            "X-CSRF-Token": token
                        },
                        data: {
                            _token: token,
                            query: query,
                        },
                        success: function(data) {
                            $('#ajax_search_result').html(data);
                        }
                    });
                } catch (error) {
                    console.error('An error occurred:', error);
                }
            }
        });
    });

    function openSearchModal() {
        document.getElementById('searchModal').classList.remove('hidden');
    }

    function closeSearchModal() {
        document.getElementById('searchModal').classList.add('hidden');
    }

    window.onclick = function(event) {
        if (event.target == document.getElementById('searchModal')) {
            closeSearchModal();
        }
    }
</script>
