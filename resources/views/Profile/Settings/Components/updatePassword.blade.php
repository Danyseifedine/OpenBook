<div class="box-1 col-span-5 md:col-span-5">
    <h1 class="p-5 text-xl">@lang('messages.change_password')</h1>
    <form action="{{ route('changePassword') }}" id="changePasswordForm" method="POST"
        class="rounded col-span-5 sm:col-span-5 lg:col-span-5 md:grid lg:grid-cols-2 md:grid-cols-2 sm:grid-cols-1 gap-5 p-5">
        @csrf
        @method('post')
        <div class="flex flex-col col-span-2">
            <label for="old_password" class="pb-1 flex flex-col">@lang('messages.old_password')</label>
            <input type="password" name="old_password" id="old_password" placeholder="********"
                class="form-select form-control block w-full px-4 py-3 pr-8 leading-tight bg-white border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500">
            <p id="oldPasswordError" class="text-red-500"></p>
            @if (session()->has('old_password'))
            <p class="text-red-500">@lang('messages.oldPasswordWrong')</p>
            @endif
        </div>
        <div class="flex flex-col col-span-1">
            <label for="new_password" class="pb-1 flex flex-col">@lang('messages.new_password')</label>
            <input type="password" name="new_password" id="new_password" placeholder="********"
                class="form-select form-control block w-full px-4 py-3 pr-8 leading-tight bg-white border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500">
            <p id="newPasswordError" class="text-red-500"></p>
        </div>
        <div class="flex flex-col col-span-1">
            <label for="confirm_password" class="pb-1 flex flex-col">@lang('messages.confirm_password')</label>
            <input type="password" name="confirm_password" id="confirm_password" placeholder="********"
                class="form-select form-control block w-full px-4 py-3 pr-8 leading-tight bg-white border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500">
            <p id="confirmPasswordError" class="text-red-500"></p>
        </div>
        <button type="submit" class="btn lg:w-2/5 md:w-2/5 sm:w-2/5 w-4/5">@lang('messages.change_password')</button>
    </form>
</div>

<script>
    const form = document.getElementById('changePasswordForm');
    const oldPasswordInput = document.getElementById('old_password');
    const newPasswordInput = document.getElementById('new_password');
    const confirmPasswordInput = document.getElementById('confirm_password');
    const oldPasswordError = document.getElementById('oldPasswordError');
    const newPasswordError = document.getElementById('newPasswordError');
    const confirmPasswordError = document.getElementById('confirmPasswordError');

    form.addEventListener('submit', (event) => {
        let valid = true;

        // Reset error messages
        oldPasswordError.textContent = '';
        newPasswordError.textContent = '';
        confirmPasswordError.textContent = '';

        // Check if the old password is not empty
        if (oldPasswordInput.value.trim() === '') {
            oldPasswordError.textContent = '@lang('messages.oldPasswordRequired')';
            valid = false;
        }

        // Check if the new password is not empty
        if (newPasswordInput.value.trim() === '') {
            newPasswordError.textContent = '@lang('messages.newPasswordRequired')';
            valid = false;
        } else {
            // Check if the new password is between 6 and 50 characters
            if (newPasswordInput.value.length < 6 || newPasswordInput.value.length > 50) {
                newPasswordError.textContent = '@lang('messages.newPasswordLength')';
                valid = false;
            }
            // Check if the new password contains at least one letter, one number, and one special character
            const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]+$/;
            if (!passwordRegex.test(newPasswordInput.value)) {
                newPasswordError.textContent =
                    '@lang('messages.newPasswordFormat')';
                valid = false;
            }
        }

        // Check if the confirm password is not empty
        if (confirmPasswordInput.value.trim() === '') {
            confirmPasswordError.textContent = '@lang('messages.confirmPasswordRequired')';
            valid = false;
        } else {
            // Check if the confirm password matches the new password
            if (newPasswordInput.value !== confirmPasswordInput.value) {
                confirmPasswordError.textContent = '@lang('messages.ConfirmPasswordNewPassword')';
                valid = false;
            }
        }

        if (!valid) {
            event.preventDefault(); // Prevent form submission
        }
    });
</script>
