@foreach ($datas as $data)
    <a href="{{ route('otherUserProfile', $data->id) }}">
        <div class="block p-4 border-b border-gray-200 hover:bg-gray-100 flex items-center">
            @if ($data->ProfileImage)
                <div class="w-16 h-16 rounded-full bg-cover bg-center mr-4"
                    style="background-image: url('{{ asset('uploads/' . $data->ProfileImage) }}'); background-position: center; background-size: cover;">
                </div>
            @else
                <div class="w-16 h-16 rounded-full bg-gray-300 mr-4"
                    style="background-image: url('{{ asset('uploads/default.jpg') }}'); background-position: center; background-size: cover;">
                </div>
            @endif
            <div>
                <p class="text-sm text-gray-600">{{ $data->name }}</p>
                <p class="text-sm text-gray-600">{{ $data->email }}</p>
            </div>
        </div>
    </a>
@endforeach
