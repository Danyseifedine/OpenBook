@guest
    <div class="max-w-2xl mx-auto">

        <div id="authentication-modal" aria-hidden="true"
            class="hidden overflow-x-hidden overflow-y-auto fixed h-modal md:h-full top-4 left-0 right-0 md:inset-0 z-50 justify-center items-center">
            <div class="relative w-full max-w-md px-4 h-full md:h-auto login_modal">
                <!-- Modal content -->
                <div class="bg-white rounded-lg shadow relative dark:bg-gray-700">
                    <div class="flex justify-end p-2">
                        <button type="button"
                            class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white"
                            data-modal-toggle="authentication-modal">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                    clip-rule="evenodd"></path>
                            </svg>
                        </button>
                    </div>
                    <form method="POST" id="RegisterForm" class="space-y-6 px-6 lg:px-8 pb-4 sm:pb-6 xl:pb-8"
                        action="{{ route('register') }}">

                        @csrf
                        @method('POST')

                        <h3 class="text-xl font-medium text-gray-900 dark:text-white">@lang('messages.Signintoourplatform')</h3>
                        <div>
                            <label for="name"
                                class="text-sm font-medium text-gray-900 block mb-2 dark:text-gray-300">@lang('messages.Yourname')</label>
                            <input type="text" name="name" id="name"
                                class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                placeholder='@lang('messages.PlaceholderName')' autocomplete="off" value="{{ old('name') }}">
                        </div>
                        <div>
                            <label for="email"
                                class="text-sm font-medium text-gray-900 block mb-2 dark:text-gray-300">@lang('messages.Youremail')</label>
                            <input type="email" name="email" id="email"
                                class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                placeholder="name@company.com" autocomplete="off" value="{{ old('email') }}">
                        </div>
                        <div>
                            <label for="password"
                                class="text-sm font-medium text-gray-900 block mb-2 dark:text-gray-300">@lang('messages.Yourpassword')</label>
                            <input type="password" name="password" id="password" placeholder="••••••••"
                                class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                autocomplete="off">
                        </div>
                        <div class="flex justify-between">
                            <div class="flex items-start">
                                <div class="flex items-center h-5">
                                    <input id="remember" aria-describedby="remember" type="checkbox"
                                        class="bg-gray-50 border border-gray-300 focus:ring-3 focus:ring-blue-300 h-4 w-4 rounded dark:bg-gray-600 dark:border-gray-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800">
                                </div>
                                <div class="text-sm ml-3">
                                    <label for="remember"
                                        class="font-medium text-gray-900 dark:text-gray-300">@lang('messages.Rememberme')</label>
                                </div>
                            </div>
                        </div>
                        <button type="submit"
                            class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">@lang('messages.Loginbutton')</button>
                    </form>
                </div>
            </div>
        </div>


        <div class="max-w-2xl mx-auto">

            <div id="login-modal" aria-hidden="true"
                class="hidden overflow-x-hidden overflow-y-auto fixed h-modal md:h-full top-4 left-0 right-0 md:inset-0 z-50 justify-center items-center">
                <div class="relative w-full max-w-md px-4 h-full md:h-auto login_modal">
                    <!-- Modal content -->
                    <div class="bg-white rounded-lg shadow relative dark:bg-gray-700">
                        <div class="flex justify-end p-2">
                            <button type="button"
                                class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white"
                                data-modal-toggle="login-modal">
                                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                        d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                        clip-rule="evenodd"></path>
                                </svg>
                            </button>
                        </div>
                        <form id="LoginForm" class="space-y-6 px-6 lg:px-8 pb-4 sm:pb-6 xl:pb-8"
                            action="{{ route('login') }}" method="post">

                            @csrf
                            @method('POST')
                            <h3 class="text-xl font-medium text-gray-900 dark:text-white">@lang('messages.Signuptoourplatform')</h3>
                            <div>
                                <label for="new_email"
                                    class="text-sm font-medium text-gray-900 block mb-2 dark:text-gray-300">@lang('messages.Youremail')</label>
                                <input type="email" name="email" id="new_email"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                    placeholder="name@email.com" autocomplete="off">
                            </div>
                            <div>
                                <label for="new_password"
                                    class="text-sm font-medium text-gray-900 block mb-2 dark:text-gray-300">@lang('messages.Yourpassword')
                                </label>
                                <input type="password" name="password" id="new_password" placeholder="••••••••"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                    autocomplete="off">
                            </div>
                            <div class="flex justify-between">
                                <div class="flex items-start">
                                    <div class="flex items-center h-5">
                                        <input id="remember_" aria-describedby="remember" type="checkbox"
                                            class="bg-gray-50 border border-gray-300 focus:ring-3 focus:ring-blue-300 h-4 w-4 rounded dark:bg-gray-600 dark:border-gray-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800">
                                    </div>
                                    <div class="text-sm ml-3">
                                        <label for="remember"
                                            class="font-medium text-gray-900 dark:text-gray-300">@lang('messages.Rememberme')
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <button type="submit"
                                class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">@lang('messages.Registerbutton')
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            <script>
                function initializeFormValidation() {
                    var nameInput = document.getElementById("name");
                    var emailInput = document.getElementById("email");
                    var passwordInput = document.getElementById("password");
                    var rememberCheckbox = document.getElementById("remember");

                    nameInput.addEventListener("input", validateName);
                    emailInput.addEventListener("input", validateEmail);
                    passwordInput.addEventListener("input", validatePassword);
                    rememberCheckbox.addEventListener("change", validateRemember);

                    function validateName() {
                        var nameValue = nameInput.value.trim();

                        if (nameValue === "") {
                            showValidationError(nameInput, "@lang('messages.NameRequired')");
                        } else if (nameValue.length < 3 || nameValue.length > 15) {
                            showValidationError(
                                nameInput,
                                "@lang('messages.NameLength')"
                            );
                        } else if (!/^[a-zA-Z\s]+$/.test(nameValue)) {
                            showValidationError(
                                nameInput,
                                "@lang('messages.NameContainer')"
                            );
                        } else {
                            hideValidationError(nameInput);
                        }
                    }

                    function validateEmail() {
                        var emailValue = emailInput.value.trim();

                        if (emailValue === "") {
                            showValidationError(emailInput, "@lang('messages.EmailRequired')");
                        } else if (!emailInput.checkValidity()) {
                            showValidationError(
                                emailInput,
                                "@lang('messages.EmailInvalid')"
                            );
                        } else if (emailValue.length > 100) {
                            showValidationError(
                                emailInput,
                                "@lang('messages.EmailLength')"
                            );
                        } else if (emailValue.toLowerCase().endsWith(".com")) {
                            var domainIndex = emailValue.lastIndexOf("@");
                            var slicedEmail = emailValue.slice(0, domainIndex + 1).trim(); // Trim the email

                            if (emailValue.includes(" ")) {
                                showValidationError(emailInput, "@lang('messages.EmailSpace')");
                            } else {
                                console.log(slicedEmail); // Output: danysmo123@gmail.com
                                hideValidationError(emailInput);
                            }
                        } else {
                            showValidationError(emailInput, "@lang('messages.EmailFormat')");
                        }
                    }

                    // Helper function to validate email format
                    function isValidEmail(email) {
                        var emailPattern = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i;
                        return emailPattern.test(email);
                    }

                    function validatePassword() {
                        var passwordValue = passwordInput.value.trim();

                        if (passwordValue === "") {
                            showValidationError(passwordInput, "@lang('messages.PasswordRequired')");
                        } else if (passwordValue.length <= 6) {
                            showValidationError(
                                passwordInput,
                                "@lang('messages.PasswordLength')"
                            );
                        } else if (!isValidPasswordFormat(passwordValue)) {
                            showValidationError(
                                passwordInput,
                                "@lang('messages.PasswordFormat')"
                            );
                        } else {
                            hideValidationError(passwordInput);
                        }
                    }

                    function isValidPasswordFormat(password) {
                        var passwordPattern = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}$/;
                        return passwordPattern.test(password);
                    }

                    function validateRemember() {
                        if (!rememberCheckbox.checked) {
                            showValidationError(rememberCheckbox, "*");
                        } else {
                            hideValidationError(rememberCheckbox);
                        }
                    }

                    function showValidationError(inputElement, errorMessage) {
                        var errorElement = inputElement.nextElementSibling;
                        if (
                            !errorElement ||
                            !errorElement.classList.contains("error-message")
                        ) {
                            errorElement = document.createElement("p");
                            errorElement.className = "error-message text-red-500";
                            inputElement.parentNode.insertBefore(
                                errorElement,
                                inputElement.nextSibling
                            );
                        }
                        errorElement.textContent = errorMessage;
                        inputElement.classList.add("error-input");
                    }

                    function hideValidationError(inputElement) {
                        var errorElement = inputElement.nextElementSibling;
                        if (errorElement && errorElement.classList.contains("error-message")) {
                            errorElement.parentNode.removeChild(errorElement);
                        }
                        inputElement.classList.remove("error-input");
                    }

                    document
                        .getElementById("RegisterForm")
                        .addEventListener("submit", function(event) {
                            var formInputs = [
                                nameInput,
                                emailInput,
                                passwordInput,
                                rememberCheckbox,
                            ];
                            var validationErrors = 0;

                            formInputs.forEach(function(inputElement) {
                                if (inputElement.value.trim() === "") {
                                    showValidationError(
                                        inputElement,
                                        "@lang('messages.InputRequired')"
                                    );
                                    validationErrors++;
                                } else {
                                    hideValidationError(inputElement);
                                }
                            });

                            if (validationErrors > 0) {
                                event.preventDefault();
                            }
                        });
                }

                initializeFormValidation();

                var emailInput = document.getElementById("new_email");
                var passwordInput = document.getElementById("new_password");

                emailInput.addEventListener("input", hideValidationError);
                passwordInput.addEventListener("input", hideValidationError);

                document
                    .getElementById("LoginForm")
                    .addEventListener("submit", function(event) {
                        if (emailInput.value.trim() === "") {
                            event.preventDefault();
                            showValidationError(emailInput, "@lang('messages.EmailRequired')");
                        } else {
                            hideValidationError(emailInput);
                        }

                        if (passwordInput.value.trim() === "") {
                            event.preventDefault();
                            showValidationError(passwordInput, "@lang('messages.PasswordRequired')");
                        } else {
                            hideValidationError(passwordInput);
                        }
                    });

                function showValidationError(inputElement, errorMessage) {
                    var errorElement = inputElement.nextElementSibling;
                    if (!errorElement || !errorElement.classList.contains("error-message")) {
                        errorElement = document.createElement("p");
                        errorElement.className = "error-message text-red-500";
                        inputElement.parentNode.insertBefore(
                            errorElement,
                            inputElement.nextSibling
                        );
                    }
                    errorElement.textContent = errorMessage;
                    inputElement.classList.add("error-input");
                }

                function hideValidationError() {
                    var errorElement = this.nextElementSibling;
                    if (errorElement && errorElement.classList.contains("error-message")) {
                        errorElement.parentNode.removeChild(errorElement);
                    }
                    this.classList.remove("error-input");
                }
            </script>
        @endguest
