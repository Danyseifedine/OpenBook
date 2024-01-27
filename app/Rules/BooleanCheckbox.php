<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class BooleanCheckbox implements Rule
{
    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        return $value === 'on' || $value === '1' || $value === 1 || $value === true;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'The :attribute must be a boolean value.';
    }
}
