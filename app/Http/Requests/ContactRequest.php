<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ContactRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'subject' => [
                'required',
                Rule::in(['feedback', 'report_issue', 'recommended_book', 'website_improvement_suggestion', 'technical_support', 'collaboration_opportunity', 'content_suggestion', 'donation_offering', 'partnership_proposal']),
            ],            'message' => 'required|regex:/^[A-Za-z0-9\s!?\x{0600}-\x{06FF}]+$/u|max:200|min:5',
        ];
    }
}
