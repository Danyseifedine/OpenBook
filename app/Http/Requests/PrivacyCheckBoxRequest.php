<?php

namespace App\Http\Requests;

use App\Rules\BooleanCheckbox;
use Illuminate\Foundation\Http\FormRequest;

class PrivacyCheckBoxRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true; // Set this to true if you want to authorize the request.
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'checkbox_language'            => new BooleanCheckbox,
            'checkbox_country'             => new BooleanCheckbox,
            'checkbox_city'                => new BooleanCheckbox,
            'checkbox_phone'               => new BooleanCheckbox,
            'checkbox_birthday'            => new BooleanCheckbox,
            'checkbox_gender'              => new BooleanCheckbox,
            'checkbox_age'                 => new BooleanCheckbox,
            'checkbox_fav_author'          => new BooleanCheckbox,
            'checkbox_favorite_book_genre' => new BooleanCheckbox,
            'checkbox_worst_book'          => new BooleanCheckbox,
            'checkbox_fav_book'            => new BooleanCheckbox,
            'checkbox_description'         => new BooleanCheckbox,
        ];
    }

    public function messages(): array
    {
        return [
            'boolean' => 'The :attribute field must be a boolean value.',
        ];
    }
}
