@if (app()->getLocale() == 'en')
    <section class="home section mt-52 flex items-center p-10" id="discount">
        <div class="home__container container grid grid-cols-1 lg:grid-cols-5 items-center">
            <div class="home__data col-span-2">
                <h1 class="home__title text-5xl flex flex-col">
                    <span>Browse &</span>
                    <span class="pt-4"> Select E-Books
                    </span>
                </h1>

                <p class="home__description">
                    Find the best e-books from your favorite
                    writers, explore hundeds of books with all
                    possible categories, take advantage of the
                    <span class="text-blue-500 font-bold">100%</span> discount and much more
                </p>

                <a href="" class="button">Explore Now</a>
            </div>

            <div class="home__images col-span-3">
                <img src="{{ asset('images/discount-book-1.png') }}" alt="" class="home__img-1">
                <img src="{{ asset('images/discount-book-2.png') }}" alt="" class="home__img-2">
            </div>
        </div>
    </section>
@else
    <section class="home section mt-52 flex items-center p-10" id="discount">
        <div class="home__container container grid grid-cols-1 lg:grid-cols-5 items-center">
            <div class="home__data col-span-2">
                <h1 class="home__title text-5xl flex flex-col">
                    <span>تصفح &</span>
                    <span class="pt-4">اختر الكتب الإلكترونية
                    </span>
                </h1>

                <p class="home__description">
                    ابحث عن أفضل الكتب الإلكترونية من كتّابك المفضلين، استكشف مئات الكتب في جميع الفئات الممكنة، واستفد
                    من
                    <span class="text-blue-500 font-bold"> 100% </span>خصم والمزيد
                </p>

                <a href="" class="button">استكشف الآن</a>
            </div>


            <div class="home__images col-span-3">
                <img src="{{ asset('images/discount-book-1.png') }}" alt="" class="home__img-2">
                <img src="{{ asset('images/discount-book-2.png') }}" alt="" class="home__img-1">
            </div>
        </div>
    </section>
@endif
