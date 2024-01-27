<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <title></title>
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>

    <!--=============== REMIXICONS ===============-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

    <link rel="stylesheet" href="https://unpkg.com/@themesberg/flowbite@1.2.0/dist/flowbite.min.css" />

    {{-- ============ BOOTSTRAP ICON --}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

    <link rel="stylesheet" href="{{ asset('css/admin.css') }}">

    <script src="https://code.jquery.com/jquery-3.7.0.min.js"
        integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <div class="sidebar">
        <div class="logo-details">
            <i class="bi bi-book icon" style="font-size:30px"></i>
            <div class="logo_name">OpenBook</div>
            <i class='bx bx-menu' id="btn"></i>
        </div>
        <ul class="nav-list">
            <li>
                <i class='bx bx-search'></i>
                <input type="text" placeholder="Search...">
                <span class="tooltip">Search</span>
            </li>
            <li>
                <a href="{{ route('admin') }}">
                    <i class='bx bx-grid-alt'></i>
                    <span class="links_name">Dashboard</span>
                </a>
                <span class="tooltip">Dashboard</span>
            </li>
            <li>
                <a href="{{ route('userTable') }}">
                    <i class='bx bx-user '></i>
                    <span class="links_name">User</span>
                </a>
                <span class="tooltip">User</span>
            </li>
            <li>
                <a href="{{ route('messageTable') }}">
                    <i class='bx bx-chat'></i>
                    <span class="links_name">Messages</span>
                </a>
                <span class="tooltip">Messages</span>
            </li>
            <li>
                <a href="#">
                    <i class="ri-git-repository-line"></i>
                    <span class="links_name">Books</span>
                </a>
                <span class="tooltip">Books</span>
            </li>
            <li>
                <a href="#" style="color: red">
                    <i class="ri-alarm-warning-fill"></i>
                    <span class="links_name">Reports</span>
                </a>
                <span class="tooltip">Reports</span>
            </li>
            <li>
                <a href="">
                    <i class="bi bi-chevron-double-up"></i>
                    <span class="links_name">Promote</span>
                </a>
                <span class="tooltip">Promote</span>
            </li>
            <li>
                <a href="#">
                    <i class='bx bx-cog'></i>
                    <span class="links_name">Setting</span>
                </a>
                <span class="tooltip">Setting</span>
            </li>
            <li class="profile">
                <div class="profile-details">
                    @if ($data->ProfileImage)
                        <div class="block rounded-full shadow-xl bg-cover bg-center"
                            style="width: 40px; height: 40px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 50%;
                        background-image: url('{{ asset('uploads/' . $data->ProfileImage) }}')">
                        </div>
                    @else
                        <div class="block rounded-full shadow-xl bg-cover bg-center"
                            style="width: 40px; height: 40px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 50%;
                        background-image: url('{{ asset('uploads/1689756761354.jpg') }}')">
                        </div>
                    @endif
                    <div class="name_job">
                        <div class="name pl-5">{{ $data->name }}</div>
                    </div>
                </div>
                <a href="{{ route('home') }}"><i class='bx bx-log-out' id="log_out"></i></a>
            </li>
        </ul>
    </div>

    @yield('section')

</body>
<script src="{{ asset('js/admin/admin.js') }}"></script>

</html>
