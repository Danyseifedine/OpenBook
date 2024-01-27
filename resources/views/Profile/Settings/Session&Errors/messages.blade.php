@if (session()->has('old_password'))
    <div class="error flex bg-red-100 rounded-lg p-4 mb-4 text-sm text-red-700" role="alert" style="position: fixed">
        <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
                d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                clip-rule="evenodd"></path>
        </svg>
        <div>
            <span class="font-medium"></span> &nbsp; @lang('messages.something_went_wrong')
        </div>
    </div>
@endif

@if (session()->has('failed_change_password'))
    <div class="error flex bg-red-100 rounded-lg p-4 mb-4 text-sm text-red-700" role="alert" style="position: fixed">
        <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
                d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                clip-rule="evenodd"></path>
        </svg>
        <div>
            <span class="font-medium"></span> &nbsp; @lang('messages.something_went_wrong')
        </div>
    </div>
@endif

@if (
    $errors->has('new_password') ||
        $errors->has('confirm_password') ||
        $errors->has('old_password') ||
        $errors->has('language') ||
        $errors->has('age') ||
        $errors->has('fav_book') ||
        $errors->has('fav_author') ||
        $errors->has('city') ||
        $errors->has('country') ||
        $errors->has('worst_book') ||
        $errors->has('phone') ||
        $errors->has('birthday') ||
        $errors->has('gender') ||
        $errors->has('favorite_book_genre') ||
        $errors->has('description'))
    <div class="error flex bg-red-100 rounded-lg p-4 mb-4 text-sm text-red-700" role="alert" style="position: fixed">
        <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
                d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                clip-rule="evenodd"></path>
        </svg>
        <div>
            <span class="font-medium"></span> &nbsp; @lang('messages.something_went_wrong')
        </div>
    </div>
@endif


@if (session()->has('ImageRemoved'))
    <div class="error flex bg-green-100 rounded-lg p-4 mb-4 text-sm text-green-700" role="alert"
        style="position: fixed">
        <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
                d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                clip-rule="evenodd"></path>
        </svg>
        <div>
            <span class="font-medium"></span> &nbsp; @lang('messages.ImageRemoved')
        </div>
    </div>
@endif
@if (session()->has('ImageChanged'))
    <div class="error flex bg-green-100 rounded-lg p-4 mb-4 text-sm text-green-700" role="alert"
        style="position: fixed">
        <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
                d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                clip-rule="evenodd"></path>
        </svg>
        <div>
            <span class="font-medium"></span> &nbsp; @lang('messages.ImageChanged')
        </div>
    </div>
@endif
@if (session()->has('PasswordChanged'))
    <div class="error flex bg-green-100 rounded-lg p-4 mb-4 text-sm text-green-700" role="alert"
        style="position: fixed">
        <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
                d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                clip-rule="evenodd"></path>
        </svg>
        <div>
            <span class="font-medium"></span> &nbsp; @lang('messages.PasswordChanged')
        </div>
    </div>
@endif
@if (session()->has('InfoUpdate'))
    <div class="error flex bg-green-100 rounded-lg p-4 mb-4 text-sm text-green-700" role="alert"
        style="position: fixed">
        <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
                d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                clip-rule="evenodd"></path>
        </svg>
        <div>
            <span class="font-medium"></span> &nbsp; @lang('messages.InfoUpdate')
        </div>
    </div>
@endif
@error('image')
    @if ($message == 'format')
        <div class="error flex bg-red-100 rounded-lg p-4 mb-4 text-sm text-red-700" role="alert" style="position: fixed">
            <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                    d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                    clip-rule="evenodd"></path>
            </svg>
            <div>
                <span class="font-medium"></span> @lang('messages.image_format')
            </div>
        </div>
    @elseif ($message == 'size')
        <div class="error flex bg-red-100 rounded-lg p-4 mb-4 text-sm text-red-700" role="alert" style="position: fixed">
            <svg class="w-5 h-5 inline mr-3" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                    d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                    clip-rule="evenodd"></path>
            </svg>
            <div>
                <span class="font-medium"></span> @lang('messages.image_size')
            </div>
        </div>
    @endif
@enderror
