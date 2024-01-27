<div
    class="box-1 p-5 lg:p-1 gap-12 rounded col-span-5 sm:col-span-5 lg:col-span-2 md:col-span-1 sm:col-span-1 grid grid-cols-1 lg:grid-cols-2 content-center items-center">
    <div class="">
        @if ($data->ProfileImage)
            <div style=" background-image: url('{{ asset('uploads/' . $data->ProfileImage) }}');;width:200px;height:200px"
                class="lg:w-4/5 md:w-4/5 w-5/5 sm:w-2/5 p-5 rounded-xl block shadow-xl bg-cover bg-center">
            </div>
        @else
            <div style="background-image: url('{{ asset('uploads/default.jpg') }}');width:200px;height:200px"
                class="p-5 bg-cover bg-center">
            </div>
        @endif
    </div>
    <div class="md:pt-0 lg:pt-0 pt-5">
        <p>{{ $data->name }}</p>
        <p>{{ $data->email }}</p>
        <form action="{{ route('updateImage') }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('post')

            <input type="file" name="image" id="input-file" style="display: none;" accept="image/*">
            <label class="inputbox pt-3" for="input-file"
                style="border: 1px solid transparent;color:#007bff; cursor:pointer">
                @lang('messages.change_image')
            </label><br>

            <!-- Hidden Save button -->
            <button type="submit" id="save-btn" class="btn" style="display: none;">@lang('messages.save')</button>
        </form>
        @if ($data->ProfileImage)
            <form action="{{ route('removeImage') }}" method="POST">
                @csrf
                @method('delete')
                <button type="submit" class="btn">@lang('messages.remove_image')</button>
            </form>
        @endif
    </div>
</div>
