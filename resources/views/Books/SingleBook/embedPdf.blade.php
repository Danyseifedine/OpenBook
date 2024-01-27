<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">


<a href="{{ url()->previous() }}"><i class="ri-arrow-left-line" style="font-size: 30px;margin:100px"></i></a>

<embed src="{{ asset('pdfs/' . $book->pdf) }}" type="application/pdf" width="100%" height="100%">
