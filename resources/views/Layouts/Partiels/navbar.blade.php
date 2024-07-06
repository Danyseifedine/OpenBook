<nav class="nav container">
    <div class="nav__data">
        <a href="" class="nav__logo pr-2 pl-2" style="font-size:22px;">
            <i class="bi bi-book" style="font-size:30px"></i> OpenBook
        </a>

        <div class="nav__toggle" id="nav-toggle">
            <i class="ri-menu-line nav__toggle-menu"></i>
            <i class="ri-close-line nav__toggle-close"></i>
        </div>
    </div>

    <!--=============== NAV MENU ===============-->
    <div class="nav__menu" id="nav-menu">
        <ul class="nav__list">

            @include('layouts.partiels.navbarComponent.guestItems')
            @include('layouts.partiels.navbarComponent.adminItems')
            @include('layouts.partiels.navbarComponent.authItems')

    </div>


</nav>

@include('Auth.auth')
