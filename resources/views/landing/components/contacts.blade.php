@auth
    <div class="container mx-auto pb-5" style="margin-top: 110px">
        <div class="grid grid-cols-1 md:grid-cols-12">
            <div class="bg-gray-900 md:col-span-4 p-10 text-white">
                <p class="mt-4 text-sm leading-7 font-regular uppercase">
                    @lang('messages.contact')
                </p>
                <h3 class="text-3xl sm:text-4xl leading-normal font-extrabold tracking-tight">
                    @lang('messages.get_in') <span class="text-indigo-600">@lang('messages.touch')</span>
                </h3>
                <p class="mt-4 leading-7 text-gray-200 mb-12" style="text-align: justify">
                    @lang('messages.contact_text')

                </p>

                <div class="flex items-center mt-5">
                    <svg class="h-6 mr-2 text-indigo-600" fill="currentColor" version="1.1"
                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 489.536 489.536"
                        xmlns:xlink="http://www.w3.org/1999/xlink" enable-background="new 0 0 489.536 489.536">
                        <g>
                            <g>
                                <path
                                    d="m488.554,476l-99-280.2c-1-4.2-5.2-7.3-9.4-7.3h-45.6c12.9-31.1 19.6-54.9 19.6-70.8 0-64.6-50-117.7-112.5-117.7-61.5,0-112.5,52.1-112.5,117.7 0,17.6 8.2,43.1 19.9,70.8h-39.7c-4.2,0-8.3,3.1-9.4,7.3l-99,280.2c-3.2,10.3 6.3,13.5 9.4,13.5h468.8c4.2,0.5 12.5-4.2 9.4-13.5zm-246.9-455.3c51,1.06581e-14 91.7,43.7 91.7,96.9 0,56.5-79.2,182.3-91.7,203.1-31.3-53.1-91.7-161.5-91.7-203.1 0-53.1 40.6-96.9 91.7-96.9zm-216.7,448l91.7-259.4h41.7c29.9,64.1 83.3,151 83.3,151s81.4-145.7 83.8-151h47.4l91.7,259.4h-439.6z">
                                </path>
                                <rect width="136.5" x="177.054" y="379.1" height="20.8"></rect>
                                <path
                                    d="m289.554,108.2c0-26-21.9-47.9-47.9-47.9s-47.9,21.9-47.9,47.9 20.8,47.9 47.9,47.9c27.1,0 47.9-21.8 47.9-47.9zm-75-1c0-14.6 11.5-27.1 27.1-27.1s27.1,12.5 27.1,27.1-11.5,27.1-27.1,27.1c-14.6,2.84217e-14-27.1-12.5-27.1-27.1z">
                                </path>
                            </g>
                        </g>
                    </svg>
                    <span class="text-sm">openBook@gmail.com</span>
                </div>
                <div class="flex items-center mt-5">
                    <svg class="h-6 mr-2 text-indigo-600" fill="currentColor" version="1.1" id="Capa_1"
                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                        viewBox="0 0 300.988 300.988" style="enable-background:new 0 0 300.988 300.988;"
                        xml:space="preserve">
                        <g>
                            <g>
                                <path
                                    d="M150.494,0.001C67.511,0.001,0,67.512,0,150.495s67.511,150.493,150.494,150.493s150.494-67.511,150.494-150.493
                                                                                                                                                                                                                    S233.476,0.001,150.494,0.001z M150.494,285.987C75.782,285.987,15,225.206,15,150.495S75.782,15.001,150.494,15.001
                                                                                                                                                                                                                    s135.494,60.782,135.494,135.493S225.205,285.987,150.494,285.987z">
                                </path>
                                <polygon
                                    points="142.994,142.995 83.148,142.995 83.148,157.995 157.994,157.995 157.994,43.883 142.994,43.883 		">
                                </polygon>
                            </g>
                        </g>
                    </svg>
                    <span class="text-sm">24/7</span>
                </div>

            </div>
            <form class="md:col-span-8 p-5" method="POST" action="{{ route('sendMessage') }}">

                @csrf
                @method('post')

                <div class="flex flex-wrap -mx-3 mb-6">
                    <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                        <label class="block uppercase tracking-wide text-xs font-bold mb-2" for="grid-first-name">
                            @lang('messages.Yourname')
                        </label>
                        <input
                            class="contact_input appearance-none block w-full rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                            id="grid-first-name" type="text" value="{{ $data->name }}" placeholder="Jane" readonly>
                    </div>
                    <div class="w-full md:w-1/2 px-3">
                        <label class="block uppercase tracking-wide text-xs font-bold mb-2" for="grid-last-name">
                            @lang('messages.Youremail')
                        </label>
                        <input
                            class="contact_input appearance-none block w-full rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
                            id="grid-last-name" type="text" placeholder="Doe" value="{{ $data->email }}" readonly>
                    </div>
                </div>
                <div class="flex flex-wrap -mx-3 mb-6">
                    <div class="w-full px-3">
                        <label class="block uppercase tracking-wide text-xs font-bold mb-2">
                            @lang('messages.subject')
                        </label>
                        <select name="subject" id="subject"
                            class="contact_input appearance-none block w-full rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white">
                            <option selected>Choose an option</option>
                            <option value="feedback">Feedback</option>
                            <option value="report_issue">Report Issue</option>
                            <option value="recommended_book">Recommended Book</option>
                            <option value="website_improvement_suggestion">Website Improvement Suggestion</option>
                            <option value="technical_support">Technical Support</option>
                            <option value="collaboration_opportunity">Collaboration Opportunity</option>
                            <option value="content_suggestion">Content Suggestion</option>
                            <option value="donation_offering">Donation Offering</option>
                            <option value="partnership_proposal">Partnership Proposal</option>
                            <option value="other">Other</option>
                        </select>
                        <div id="subjectError" class="text-red-500 text-sm mt-1 mb-2" style="display: none;"></div>
                    </div>
                </div>

                <div class="flex flex-wrap -mx-3 mb-6">
                    <div class="w-full px-3">
                        <label class="block uppercase tracking-wide text-xs font-bold mb-2">
                            @lang('messages.your_message')
                        </label>
                        <textarea rows="10" id="message" name="message"
                            class="contact_input appearance-none block w-full  rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"></textarea>
                        <div id="messageError" class="text-red-500 text-sm mt-1 mb-2" style="display: none;"></div>

                    </div>
                    <div class="flex justify-between w-full px-3">
                        <button id="submitBtn"
                            class="shadow btn_contact mt-3 hover:bg-indigo-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-6 rounded"
                            type="submit">
                            @lang('messages.send_now')
                        </button>
                    </div>

                </div>

            </form>

        </div>
    </div>

@endauth

@guest
    <div class="container mx-auto p-5" style="margin-top: 110px">
        <div class="grid grid-cols-1 md:grid-cols-12">
            <div class="bg-gray-900 md:col-span-4 p-10 text-white">
                <p class="mt-4 text-sm leading-7 font-regular uppercase">
                    @lang('messages.contact')
                </p>
                <h3 class="text-3xl sm:text-4xl leading-normal font-extrabold tracking-tight">
                    @lang('messages.get_in') <span class="text-indigo-600">@lang('messages.touch')</span>
                </h3>
                <p class="mt-4 leading-7 text-gray-200 mb-12" style="text-align: justify">
                    @lang('messages.contact_text')

                </p>

                <div class="flex items-center mt-5">
                    <svg class="h-6 mr-2 text-indigo-600" fill="currentColor" version="1.1"
                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 489.536 489.536"
                        xmlns:xlink="http://www.w3.org/1999/xlink" enable-background="new 0 0 489.536 489.536">
                        <g>
                            <g>
                                <path
                                    d="m488.554,476l-99-280.2c-1-4.2-5.2-7.3-9.4-7.3h-45.6c12.9-31.1 19.6-54.9 19.6-70.8 0-64.6-50-117.7-112.5-117.7-61.5,0-112.5,52.1-112.5,117.7 0,17.6 8.2,43.1 19.9,70.8h-39.7c-4.2,0-8.3,3.1-9.4,7.3l-99,280.2c-3.2,10.3 6.3,13.5 9.4,13.5h468.8c4.2,0.5 12.5-4.2 9.4-13.5zm-246.9-455.3c51,1.06581e-14 91.7,43.7 91.7,96.9 0,56.5-79.2,182.3-91.7,203.1-31.3-53.1-91.7-161.5-91.7-203.1 0-53.1 40.6-96.9 91.7-96.9zm-216.7,448l91.7-259.4h41.7c29.9,64.1 83.3,151 83.3,151s81.4-145.7 83.8-151h47.4l91.7,259.4h-439.6z">
                                </path>
                                <rect width="136.5" x="177.054" y="379.1" height="20.8"></rect>
                                <path
                                    d="m289.554,108.2c0-26-21.9-47.9-47.9-47.9s-47.9,21.9-47.9,47.9 20.8,47.9 47.9,47.9c27.1,0 47.9-21.8 47.9-47.9zm-75-1c0-14.6 11.5-27.1 27.1-27.1s27.1,12.5 27.1,27.1-11.5,27.1-27.1,27.1c-14.6,2.84217e-14-27.1-12.5-27.1-27.1z">
                                </path>
                            </g>
                        </g>
                    </svg>
                    <span class="text-sm">openBook@gmail.com</span>
                </div>
                <div class="flex items-center mt-5">
                    <svg class="h-6 mr-2 text-indigo-600" fill="currentColor" version="1.1" id="Capa_1"
                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                        viewBox="0 0 300.988 300.988" style="enable-background:new 0 0 300.988 300.988;"
                        xml:space="preserve">
                        <g>
                            <g>
                                <path
                                    d="M150.494,0.001C67.511,0.001,0,67.512,0,150.495s67.511,150.493,150.494,150.493s150.494-67.511,150.494-150.493
                                                                                                                                                                                                                S233.476,0.001,150.494,0.001z M150.494,285.987C75.782,285.987,15,225.206,15,150.495S75.782,15.001,150.494,15.001
                                                                                                                                                                                                                s135.494,60.782,135.494,135.493S225.205,285.987,150.494,285.987z">
                                </path>
                                <polygon
                                    points="142.994,142.995 83.148,142.995 83.148,157.995 157.994,157.995 157.994,43.883 142.994,43.883 		">
                                </polygon>
                            </g>
                        </g>
                    </svg>
                    <span class="text-sm">24/7</span>
                </div>

            </div>
            <form class="md:col-span-8 p-5">

                <div id="subjectError" class="text-red-500 text-xs mt-1 mb-5">You need to create an account or log in to
                    send us a message</div>

                <div class="flex flex-wrap -mx-3 mb-6">
                    <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                        <label class="block uppercase tracking-wide text-xs font-bold mb-2" for="grid-first-name">
                            @lang('messages.Yourname')
                        </label>
                        <input
                            class="contact_input appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                            id="grid-first-name" type="text" value="" placeholder="Jane" readonly>
                    </div>
                    <div class="w-full md:w-1/2 px-3">
                        <label class="block uppercase tracking-wide text-xs font-bold mb-2" for="grid-last-name">
                            @lang('messages.Youremail')
                        </label>
                        <input
                            class="contact_input appearance-none block w-full rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
                            id="grid-last-name" type="text" placeholder="Doe" value="" readonly>
                    </div>
                </div>
                <div class="flex flex-wrap -mx-3 mb-6">
                    <div class="w-full px-3">
                        <label class="block uppercase tracking-wide text-xs font-bold mb-2">
                            @lang('messages.subject')
                        </label>
                        <input
                            class="contact_input appearance-none block w-full bg-gray-200  rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                            id="" type="text" placeholder="..." readonly>
                    </div>
                </div>

                <div class="flex flex-wrap -mx-3 mb-6">
                    <div class="w-full px-3">
                        <label class="block uppercase tracking-wide text-xs font-bold mb-2">
                            @lang('messages.your_message')
                        </label>
                        <textarea rows="10"
                            class="contact_input appearance-none block w-full rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                            readonly></textarea>
                    </div>
                    <div class="flex justify-between w-full px-3">
                        <button id="" disabled
                            class=" btn_contact shadow hover:bg-indigo-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-6 rounded"
                            type="">
                            @lang('messages.send_now')
                        </button>
                    </div>

                </div>

            </form>

        </div>
    </div>
@endguest


<script>
    $(document).ready(function() {
        // Form submission
        $('form').submit(function(event) {
            // Reset error messages and styles
            $('#subjectError, #messageError').hide();
            $('#subject, #message').removeClass('border border-red-500');

            var selectedOption = $('#subject').val(); // Get the selected option

            // Validate subject
            if (selectedOption === 'Choose an option') {
                $('#subjectError').text('@lang('messages.subjectError')').show();
                $('#subject').addClass('border border-red-500');
                event.preventDefault(); // Prevent form submission
            }

            // Validate message length and characters
            var messageValue = $('#message').val().trim();
            var isValidMessage = /^[a-zA-Z0-9\s!?\u0600-\u06FF]+$/.test(messageValue);

            if (messageValue.length < 10 || messageValue.length > 200 || !isValidMessage) {
                $('#messageError').text(
                    '@lang('messages.messageError')'
                ).show();
                $('#message').addClass('border border-red-500');
                event.preventDefault(); // Prevent form submission
            }
        });
    });
</script>
