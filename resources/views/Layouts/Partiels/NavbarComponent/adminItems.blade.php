{{-- This view is for the navbar and includes available items for only the admin and moderator --}}


@auth
    @admin
        <li>
            <a href="{{ route('addBook') }}" class="nav__link">Add</a>
        </li>
        <li>
            <a href="{{ route('admin') }}" class="nav__link">Admin</a>
        </li>
    @endadmin
@endauth

@auth
    @moderator
        <li>
            <a href="" class="nav__link">Add</a>
        </li>
    @endmoderator
@endauth
</li>

