@extends('layouts.master')
@section('title', 'home')

<script src="https://code.jquery.com/jquery-3.7.0.min.js"
    integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="{{ asset('css/books.css') }}">
@section('content')
    <div class="container" style="margin-top:120px">
        <a href="{{ url()->previous() }}"><i class="ri-arrow-left-line text-3xl hover:text-red-600"></i></a>
        <h1 class="text-4xl mb-3 page-title pb-5">@lang('messages.AllReviewsFor') {{ $book->name }}
        </h1>
        <section class="container p-1">
            <form id="reviewForm" class="pt-5">
                @csrf
                @method('post')
                <div class="error_comment text-red-500 font-bold"></div>
                <p class="comment_success text-green-500 text-bold"></p>
                <textarea class="comment_textarea shadow-orange-500	" name="review" style="width: 100%" rows="4"
                    placeholder="@lang('messages.Write_your_review')" minlength="5" maxlength="250"></textarea>

                <div id="review-error" class="text-red-500 mt-1"></div>

                <button class="btn bg-blue-500 text-white hover:bg-blue-700 p-1 rounded mt-2 mt-5" type="submit"
                    name="submit">@lang('messages.submit')</button>
            </form>
            <div class="comments-container comment mt-4 rounded m-1">

                {{-- each --}}
                @foreach ($comments as $comment)
                    <div class="each_comment p-3 mb-2">
                        @if ($comment->user->ProfileImage)
                            <div class="flex items-center gap-2">
                                <div class="block rounded-full shadow-xl bg-cover bg-center"
                                    style="width: 40px; height: 40px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 50%;
            background-image: url('{{ asset('uploads/' . $comment->user->ProfileImage) }}')">
                                </div>
                                <div>
                                    <div class="flex justify-between">
                                        <p class="name text-sm font-bold">{{ $comment->user->name }}</p>
                                    </div>
                                    <p class="email text-sm font-bold">{{ $comment->user->email }}</p>
                                </div>
                            </div>
                        @else
                            <div class="flex flex-wrap items-center gap-2">
                                <div class=" rounded-full shadow-xl bg-cover bg-center flex"
                                    style="width: 40px; height: 40px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 50%;
                    background-image: url('{{ asset('uploads/default.jpg') }}')">
                                </div>
                                <div>
                                    <div class="flex justify-between">
                                        <p class="name text-sm font-bold">{{ $comment->user->name }}</p>
                                    </div>
                                    <p class="email text-sm font-bold">{{ $comment->user->email }}</p>
                                </div>
                            </div>
                        @endif
                        <div class="review pt-7">
                            <p>{{ $comment->comment }}</p>
                            <div class="flex items-center justify-between">
                                <p class="mt-12 text-sm">{{ $comment->created_at->diffForHumans() }}</p>
                                @if ($comment->user_id == auth()->user()->id)
                                    <form action="" class="delete-comment-form mt-12"
                                        data-comment-id="{{ $comment->id }}">
                                        @csrf
                                        <button><i class="bi bi-trash3 trash_comment"></i></button>
                                    </form>
                                @endif
                            </div>
                        </div>
                        <div>
                        </div>
                    </div>
                @endforeach
        </section>
        <div class="mb-12"> {{ $comments->links('paginator.paginator') }}
        </div>
    </div>

    <script>
        $(document).ready(function() {

            $('.comment_textarea').keyup(function() {
                var value = $(this).val();
                var errorContainer = $('#review-error');
                errorContainer.text('');

                if (value.length < 5) {
                    errorContainer.text('@lang('messages.Review_min_length')');
                } else if (value.length > 250) {
                    errorContainer.text('@lang('messages.Review_max_length')');
                } else if (!/^[\p{L}\p{N}\s\p{Emoji}]*$/u.test(value)) {
                    errorContainer.text('@lang('messages.Review_invalid_characters')');
                }
            });

            $('#reviewForm').submit(function(event) {
                event.preventDefault();

                var formData = $(this).serialize();

                $.ajax({
                    type: 'POST',
                    url: '{{ route('comment', $book->id) }}',
                    data: formData,

                    success: function(response) {
                        // Extract data from the JSON response
                        var comment = response.comment;
                        var username = response.username;
                        var email = response.email;
                        var profileImage = response.ProfileImage;
                        var successfuly = `@lang('messages.commentAdded')`;
                        var empty = $('.empty-comment-section');

                        if (response.false) {
                            var error = `@lang('messages.sorry-commented')`
                            $('.error_comment').append(error)

                            function removeAll() {
                                setTimeout(function() {
                                    $(".error_comment").fadeOut("slow", function() {
                                        $(this).remove();
                                    });
                                }, 5000);
                            }
                            removeAll();
                        } else {
                            empty.remove();
                            $('.comment_success').prepend(successfuly)
                            var commentHtml = `
    <div class="each_comment p-3 mb-2">
        ${profileImage ? `<div class="flex flex-wrap items-center gap-2">
                    <div class="block rounded-full shadow-xl bg-cover bg-center"
                                    style="width: 40px; height: 40px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 50%;
                                    background-image: url('{{ asset('uploads/${response.ProfileImage}') }}')">
                                </div>
                                <div>
                                <p class="name text-sm font-bold">${username}</p>
                                <p class="email text-sm font-bold">${email}</p>
                            </div>
                        </div>` : `
                        <div class="flex flex-wrap items-center gap-2">
                            <div class=" rounded-full shadow-xl bg-cover bg-center flex"
                                style="width: 40px; height: 40px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 50%;
                                background-image: url('{{ asset('uploads/default.jpg') }}')">
                            </div>
                            <div>
                                <p class="name text-sm font-bold">${username}</p>
                                <p class="email text-sm font-bold">${email}</p>
                            </div>
                                </div>   `}
                    <div class="review pt-7">${comment}</div>
                            <div class="flex justify-between items-center">
                                <p class="mt-12 text-sm">1 seconds ago</p>
                                <form class="delete-comment-form mt-12" data-comment-id="${response.commentId}">
                                @csrf
                                <button><i class="bi bi-trash3 trash_comment"></i></button>
                                </form>
                            </div>
                            <div>
                        </div>
            </div>
            `;
                            setTimeout(function() {
                                $(".comment_success").fadeOut("slow", function() {
                                    $(this).remove();
                                });
                            }, 3000);
                        }
                        $('.comments-container').prepend(commentHtml);


                        $('#reviewForm textarea').val('');
                    },
                    error: function(xhr, status, error) {}
                });
            });
            $('.comments-container').on('submit', '.delete-comment-form', function(event) {
                event.preventDefault();

                var commentId = $(this).data('comment-id');

                var form = $(this);
                $.ajax({
                    type: 'DELETE',
                    url: '{{ route('commentDelete') }}',
                    data: {
                        _token: '{{ csrf_token() }}',
                        comment_id: commentId
                    },
                    success: function(response) {
                        form.closest('.each_comment').slideUp('slow', function() {
                            $(this).remove();
                        });
                    },
                    error: function(xhr, status, error) {
                        console.error(error);
                    }
                });
            });
        });
    </script>
