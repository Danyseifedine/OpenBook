<form method="POST" action="{{ route('privacy') }}"
    class="box-1 p-1 rounded col-span-5 sm:col-span-5 lg:col-span-2 md:col-span-5 sm:col-span-1 grid lg:grid-cols-2 md:grid-cols-2 sm:grid-cols-1">
    @csrf
    @method('post')
    <div class="col-span-2">
        <h1 class="text-red-500 pb-5">@lang('messages.check_add_profile')</h1>
    </div>
    <div class="flex items-center justify-between col-span-2 p-3">
        <p>@lang('messages.Language')</p>
        @if ($data->userPrivacy->show_language)
            <input class="switch" type="checkbox" checked id="switch_language" name="checkbox_language" /><label
                for="switch_language" class="label_switch" id="label_switch_language">Toggle</label>
        @else
            <input class="switch" type="checkbox" id="switch_language" name="checkbox_language" /><label
                for="switch_language" class="label_switch" id="label_switch_language">Toggle</label>
        @endif
    </div>
    @error('checkbox_language')
        <p class="text-red-500">{{ $message }}</p>
    @enderror
    <div class="flex items-center justify-between col-span-2 p-3">
        <p>@lang('messages.country')</p>

        @if ($data->userPrivacy->show_country)
            <input class="switch" type="checkbox" checked id="switch_country" name="checkbox_country" /><label
                for="switch_country" class="label_switch" id="label_switch_country">Toggle</label>
    </div>
@else
    <input class="switch" type="checkbox" id="switch_country" name="checkbox_country" /><label for="switch_country"
        class="label_switch" id="label_switch_country">Toggle</label>
    </div>
    @endif
    @error('checkbox_country')
        <p class="text-red-500">{{ $message }}</p>
    @enderror
    <div class="flex items-center justify-between col-span-2 p-3">
        <p>@lang('messages.city')</p>

        @if ($data->userPrivacy->show_city)
            <input class="switch" type="checkbox" checked id="switch_city" name="checkbox_city" /><label
                for="switch_city" class="label_switch" id="label_switch_city">Toggle</label>
    </div>
@else
    <input class="switch" type="checkbox" id="switch_city" name="checkbox_city" /><label for="switch_city"
        class="label_switch" id="label_switch_city">Toggle</label>
    </div>
    @endif
    @error('checkbox_city')
        <p class="text-red-500">{{ $message }}</p>
    @enderror
    <div class="flex items-center justify-between col-span-2 p-3">
        <p>@lang('messages.phone_number')</p>

        @if ($data->userPrivacy->show_phone)
            <input class="switch" type="checkbox" checked id="switch_phone" name="checkbox_phone" /><label
                for="switch_phone" class="label_switch" id="label_switch_phone">Toggle</label>
    </div>
@else
    <input class="switch" type="checkbox" id="switch_phone" name="checkbox_phone" /><label for="switch_phone"
        class="label_switch" id="label_switch_phone">Toggle</label>
    </div>
    @endif
    @error('checkbox_phone')
        <p class="text-red-500">{{ $message }}</p>
    @enderror
    <div class="flex items-center justify-between col-span-2 p-3">
        <p>@lang('messages.birthday')</p>

        @if ($data->userPrivacy->show_birthday)
            <input class="switch" type="checkbox" id="switch_birthday" checked name="checkbox_birthday" /><label
                for="switch_birthday" class="label_switch" id="label_switch_birthday">Toggle</label>
        @else
            <input class="switch" type="checkbox" id="switch_birthday" name="checkbox_birthday" /><label
                for="switch_birthday" class="label_switch" id="label_switch_birthday">Toggle</label>
        @endif
    </div>
    @error('checkbox_birthday')
        <p class="text-red-500">{{ $message }}</p>
    @enderror
    <div class="flex items-center justify-between col-span-2 p-3">
        <p>@lang('messages.gender')</p>

        @if ($data->userPrivacy->show_gender)
            <input class="switch" type="checkbox" checked id="switch_gender" name="checkbox_gender" /><label
                for="switch_gender" class="label_switch" id="label_switch_gender">Toggle</label>
        @else
            <input class="switch" type="checkbox" id="switch_gender" name="checkbox_gender" /><label for="switch_gender"
                class="label_switch" id="label_switch_gender">Toggle</label>
        @endif
    </div>
    @error('checkbox_gender')
        <p class="text-red-500">{{ $message }}</p>
    @enderror

    <div class="flex items-center justify-between col-span-2 p-3">
        <p>@lang('messages.favorite_author')</p>

        @if ($data->userPrivacy->show_fav_auth)
            <input class="switch" type="checkbox" checked id="switch_fav_author" name="checkbox_fav_auth" /><label
                for="switch_fav_author" class="label_switch" id="label_switch_fav_author">Toggle</label>
        @else
            <input class="switch" type="checkbox" id="switch_fav_author" name="checkbox_fav_auth" /><label
                for="switch_fav_author" class="label_switch" id="label_switch_fav_author">Toggle</label>
        @endif
    </div>
    @error('checkbox_fav_auth')
        <p class="text-red-500">{{ $message }}</p>
    @enderror
    <div class="flex items-center justify-between col-span-2 p-3">
        <p>@lang('messages.favorite_book_genre')</p>

        @if ($data->userPrivacy->show_favorite_book_genre)
            <input class="switch" type="checkbox" id="switch_favorite_book_genre" checked
                name="checkbox_favorite_book_genre" /><label for="switch_favorite_book_genre" class="label_switch"
                id="label_switch_favorite_book_genre">Toggle</label>
        @else
            <input class="switch" type="checkbox" id="switch_favorite_book_genre"
                name="checkbox_favorite_book_genre" /><label for="switch_favorite_book_genre" class="label_switch"
                id="label_switch_favorite_book_genre">Toggle</label>
        @endif
    </div>
    @error('checkbox_favorite_book_genre')
        <p class="text-red-500">{{ $message }}</p>
    @enderror
    <div class="flex items-center justify-between col-span-2 p-3">
        <p>@lang('messages.worst_book')</p>

        @if ($data->userPrivacy->show_worst_book)
            <input class="switch" type="checkbox" checked id="switch_worst_book" name="checkbox_worst_book" /><label
                for="switch_worst_book" class="label_switch" id="label_switch_worst_book">Toggle</label>
        @else
            <input class="switch" type="checkbox" id="switch_worst_book" name="checkbox_worst_book" /><label
                for="switch_worst_book" class="label_switch" id="label_switch_worst_book">Toggle</label>
        @endif
    </div>
    @error('checkbox_worst_book')
        <p class="text-red-500">{{ $message }}</p>
    @enderror
    <div class="flex items-center justify-between col-span-2 p-3">
        <p>@lang('messages.favorite_book')</p>

        @if ($data->userPrivacy->show_fav_book)
            <input class="switch" type="checkbox" checked id="switch_fav_book" name="checkbox_fav_book" /><label
                for="switch_fav_book" class="label_switch" id="label_switch_fav_book">Toggle</label>
        @else
            <input class="switch" type="checkbox" id="switch_fav_book" name="checkbox_fav_book" /><label
                for="switch_fav_book" class="label_switch" id="label_switch_fav_book">Toggle</label>
        @endif
    </div>
    @error('checkbox_fav_book')
        <p class="text-red-500">{{ $message }}</p>
    @enderror
    <div class="flex items-center justify-between col-span-2 p-3">
        <p>@lang('messages.description')</p>
        @if ($data->userPrivacy->show_description)
            <input class="switch" type="checkbox" id="switch_description" checked
                name="checkbox_description" /><label for="switch_description" class="label_switch"
                id="label_switch_description">Toggle</label>
        @else
            <input class="switch" type="checkbox" id="switch_description" name="checkbox_description" /><label
                for="switch_description" class="label_switch" id="label_switch_description">Toggle</label>
        @endif
    </div>
    @error('checkbox_description')
        <p class="text-red-500">{{ $message }}</p>
    @enderror
    <button class="btn" style="width: 80px">@lang('messages.save')</button>
</form>
