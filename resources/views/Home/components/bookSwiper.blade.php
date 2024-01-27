<div class="autoplay flex container" style="direction: ltr">
    @foreach ($books as $book)
        <article class="soon__article">
            <a href="{{ route('singleBook', $book->id) }}">
                <img src="{{ asset('/books_cover/' . $book->cover_image) }}" alt="image"
                    class="soon__img image-with-shadow" style="width:600px !important">
            </a>
        </article>
    @endforeach

</div>

<div class="container autoplay_2 flex" style="direction: ltr">

    @foreach ($books as $book)
        <article class="soon__article swiper-slide">
            <a href="{{ route('singleBook', $book->id) }}">
                <img src="{{ asset('/books_cover/' . $book->cover_image) }}" alt="image"
                    class="soon__img image-with-shadow" style="width:600px !important">
            </a>
        </article>
    @endforeach
</div>
