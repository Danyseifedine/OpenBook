{{-- This view is for the navbar and includes available items for the authenticated user --}}

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
    <button onclick="openSearchModal()"><i class="ri-search-eye-line nav__link text-2xl"></i></button>
</li>

<!-- Search Modal -->
{{-- <div id="searchModal" style="width: 100%; height:100vh;background-color:red !important;" class="modal">
    <div class="modal-content" style="position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%);">
        <span class="close" onclick="closeSearchModal()">&times;</span>
        <form class="search-form" method="get" action="">
            <label for="searchQuery" class="sr-only">Search</label>
            <input type="text" id="searchQuery" name="searchQuery" placeholder="Search..." class="search-input">
            <button type="submit" class="search-button">Search</button>
        </form>
    </div>
</div> --}}

{{-- <script>
    function openSearchModal() {
        document.getElementById('searchModal').style.display = 'block';
    }

    function closeSearchModal() {
        document.getElementById('searchModal').style.display = 'none';
    }

    window.onclick = function(event) {
        if (event.target == document.getElementById('searchModal')) {
            closeSearchModal();
        }
    }
</script> --}}
</ul>

<script>
    $(document).ready(function() {
        $("#inboxClick").click(function() {
            $("#showMessage").slideToggle("slow");
        });
    });
</script>
