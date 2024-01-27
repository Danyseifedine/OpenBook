<li>
    <a href="{{ route('home') }}" class="nav__link">@lang('messages.home')</a>
</li>
<!--=============== DROPDOWN 1 ===============-->

<li class="dropdown__item">
    <div class="nav__link dropdown__button">
        @lang('messages.discover') <i class="ri-arrow-down-s-line dropdown__arrow"></i>
    </div>



    <div class="dropdown__container">
        <div class="dropdown__content">
            <div class="dropdown__group">
                <div class="dropdown__icon">
                    <i class="ri-book-fill"></i>
                </div>

                <span class="dropdown__title">@lang('messages.Books')</span>

                <ul class="dropdown__list">
                    <li>
                        <a href="{{ route('allBooks') }}" class="dropdown__link">@lang('messages.Allbooks')</a>
                    </li>
                    <li>
                        <a href="#" class="dropdown__link">@lang('messages.PopularBooks')</a>
                    </li>
                </ul>
            </div>

            <div class="dropdown__group">
                <div class="dropdown__icon">
                    <i class="ri-medal-line"></i>
                </div>

                <span class="dropdown__title">@lang('messages.BookRatings')</span>

                <ul class="dropdown__list">
                    <li>
                        <a href="#" class="dropdown__link">@lang('messages.TopratedBooks')</a>
                    </li>
                    <li>
                        <a href="#" class="dropdown__link">@lang('messages.AverageratedBooks')</a>
                    </li>
                    <li>
                        <a href="#" class="dropdown__link">@lang('messages.WorstratedBooks')</a>
                    </li>
                </ul>
            </div>

            <div class="dropdown__group">
                <div class="dropdown__icon">
                    <i class="ri-file-paper-2-line"></i>
                </div>

                <span class="dropdown__title">@lang('messages.NewReleases')</span>

                <ul class="dropdown__list">
                    <li>
                        <a href="#" class="dropdown__link">@lang('messages.LatestBooks')</a>
                    </li>
                    <li>
                        <a href="#" class="dropdown__link">@lang('messages.UpcomingBooks')</a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</li>

{{-- DROPDOWN 2 --}}
<li class="dropdown__item">
    <div class="nav__link dropdown__button">
        @lang('messages.Categories') <i class="ri-arrow-down-s-line dropdown__arrow"></i>
    </div>

    <div class="dropdown__container">
        <div class="dropdown__content">
            <div class="dropdown__group">
                <div class="dropdown__icon">
                    <i class="ri-award-line"></i>
                </div>

                <span class="dropdown__title">@lang('messages.Fiction')</span>

                <ul class="dropdown__list">
                    <li>
                        <a href="{{ route('category', 'Mystery') }}" class="dropdown__link">@lang('messages.Mystery')</a>
                    </li>
                    <li>
                        <a href="{{ route('category', 'Romance') }}" class="dropdown__link">@lang('messages.Romance')</a>
                    </li>
                    <li>
                        <a href="{{ route('category', 'Science-Fiction') }}"
                            class="dropdown__link">@lang('messages.ScienceFiction')</a>
                    </li>
                    <li>
                        <a href="{{ route('category', 'Fantasy') }}" class="dropdown__link">@lang('messages.Fantasy')</a>
                    </li>
                </ul>
            </div>

            <div class="dropdown__group">
                <div class="dropdown__icon">
                    <i class="ri-file-text-line"></i>
                </div>

                <span class="dropdown__title">@lang('messages.NonFiction')</span>

                <ul class="dropdown__list">
                    <li>
                        <a href="{{ route('category', 'Biography') }}" class="dropdown__link">@lang('messages.Biography')</a>
                    </li>
                    <li>
                        <a href="{{ route('category', 'Self-Help') }}" class="dropdown__link">@lang('messages.SelfHelp')</a>
                    </li>
                    <li>
                        <a href="{{ route('category', 'History') }}" class="dropdown__link">@lang('messages.History')</a>
                    </li>
                    <li>
                        <a href="{{ route('category', 'Science') }}" class="dropdown__link">@lang('messages.Science')</a>
                    </li>
                </ul>
            </div>

            <div class="dropdown__group">
                <div class="dropdown__icon">
                    <i class="ri-bear-smile-line"></i>
                </div>

                <span class="dropdown__title">@lang('messages.ChildrenBooks')</span>

                <ul class="dropdown__list">
                    <li>
                        <a href="{{ route('category', 'Picture-Book') }}" class="dropdown__link">@lang('messages.PictureBooks')</a>
                    </li>
                    <li>
                        <a href="{{ route('category', 'Chapter-Book') }}" class="dropdown__link">@lang('messages.ChapterBooks')</a>
                    </li>
                </ul>
            </div>

            <div class="dropdown__group">
                <div class="dropdown__icon">
                    <i class="ri-book-2-line"></i>
                </div>

                <span class="dropdown__title">@lang('messages.Poetry')</span>

                <ul class="dropdown__list">
                    <li>
                        <a href="{{ route('category', 'Classic-Poetry') }}"
                            class="dropdown__link">@lang('messages.ClassicPoetry')</a>
                    </li>
                    <li>
                        <a href="{{ route('category', 'Arabic-Poetry') }}"
                            class="dropdown__link">@lang('messages.arabicpoetry')</a>
                    </li>
                    <li>
                        <a href="{{ route('category', 'Love-Poetry') }}" class="dropdown__link">@lang('messages.LovePoetry')</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</li>


{{-- DROP DOWN 3 --}}

<li>
    @guest
        <button class="register nav__link" style="padding: 1.25rem 1.25rem" type="button"
            data-modal-toggle="authentication-modal">
            @lang('messages.Register')
        </button>

        <button class="register" style="padding: 1.25rem 1.25rem" type="button" data-modal-toggle="login-modal">
            @lang('messages.Login')
        </button>
    @endguest
</li>

