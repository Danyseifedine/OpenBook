@if (app()->getLocale() == 'en')

    @if ($paginator->hasPages())
        <div class="flex items-center justify-between mt-7">
            @if (!$paginator->onFirstPage())
                <a href="{{ $paginator->url(1) }}" class="" style="text-align: right"><i
                        class="btn-paginator ri-arrow-left-s-line"></i></a>
            @else
                <span class="disabled-pagination " style="text-align: right"><i
                        class="btn-paginator ri-arrow-left-s-line"></i></span>
            @endif

            <div class="page-count">
                {{ $paginator->firstItem() }} - {{ $paginator->lastItem() }} @lang('messages.of') {{ $paginator->total() }}
                @lang('messages.items')
            </div>

            @if ($paginator->hasMorePages())
                <a href="{{ $paginator->nextPageUrl() }}" class=""><i
                        class="btn-paginator ri-arrow-right-s-line"></i></a>
            @endif
        </div>
    @endif
@endif


@if (app()->getLocale() == 'ar')
    @if ($paginator->hasPages())
        <div class="flex items-center justify-between mt-7">

            @if ($paginator->hasMorePages())
                <a href="{{ $paginator->nextPageUrl() }}" class=""><i
                        class="btn-paginator ri-arrow-right-s-line"></i></a>
            @endif
            <div class="page-count">
                {{ $paginator->firstItem() }} - {{ $paginator->lastItem() }} @lang('messages.of') {{ $paginator->total() }}
                @lang('messages.items')
            </div>
            @if (!$paginator->onFirstPage())
                <a href="{{ $paginator->url(1) }}" class="" style="text-align: right"><i
                        class="btn-paginator ri-arrow-left-s-line"></i></a>
            @else
                <span class="disabled-pagination " style="text-align: right"><i
                        class="btn-paginator ri-arrow-left-s-line"></i></span>
            @endif

        </div>
    @endif
@endif
