<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\App;

class UserInfoRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true; // Change this to true if you want to authorize the request.
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        $allowedBookCategories = [
            'Romance', 'Mystery', 'Science-Fiction', 'Fantasy',
            'Biography', 'Self-Help', 'History', 'Science',
            'Picture-Books', 'Chapter-Books', 'Classic', 'Poetry',
            'Arabic-Poetry', 'Love-Poetry',
        ];

        $allowedGender = [
            'Male',
            'Female'
        ];

        $allowedAge = [
            '5-17',
            '18-30',
            '30-plus'
        ];

        $allowedLanguages = [
            'English', 'Spanish', 'French', 'German', 'Italian', 'Portuguese', 'Russian', 'Japanese',
            'Chinese', 'Hindi', 'Arabic', 'Afrikaans', 'Albanian', 'Amharic', 'Armenian', 'Azerbaijani',
            'Basque', 'Belarusian', 'Bengali', 'Bosnian', 'Bulgarian', 'Catalan', 'Cebuano', 'Chichewa',
            'Corsican', 'Croatian', 'Czech', 'Danish', 'Dutch', 'Esperanto', 'Estonian', 'Filipino',
            'Finnish', 'Frisian', 'Galician', 'Georgian', 'Greek', 'Gujarati', 'Haitian Creole',
            'Hausa', 'Hawaiian', 'Hebrew', 'Hmong', 'Hungarian', 'Icelandic', 'Igbo', 'Indonesian',
            'Irish', 'Italian', 'Japanese', 'Javanese', 'Kannada', 'Kazakh', 'Khmer', 'Korean',
            'Kyrgyz', 'Lao', 'Latin', 'Latvian', 'Lithuanian', 'Luxembourgish', 'Macedonian',
            'Malagasy', 'Malay', 'Malayalam', 'Maltese', 'Maori', 'Marathi', 'Mongolian', 'Nepali',
            'Norwegian', 'Pashto', 'Persian', 'Polish', 'Portuguese', 'Punjabi', 'Romanian',
            'Russian', 'Samoan', 'Scots Gaelic', 'Serbian', 'Sesotho', 'Shona', 'Sindhi', 'Slovak',
            'Slovenian', 'Somali', 'Spanish', 'Sundanese', 'Swahili', 'Swedish', 'Tajik', 'Tamil',
            'Tatar', 'Telugu', 'Thai', 'Turkish', /* Add more languages as needed */
        ];

        $allowedCountries = [
            'Afghanistan', 'Åland Islands', 'Albania', 'Algeria', 'American Samoa', 'Andorra',
            'Angola', 'Anguilla', 'Antarctica', 'Antigua and Barbuda', 'Argentina', 'Armenia',
            'Aruba', 'Australia', 'Austria', 'Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh',
            'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin', 'Bermuda', 'Bhutan', 'Bolivia',
            'Bosnia and Herzegovina', 'Botswana', 'Bouvet Island', 'Brazil', 'Brunei Darussalam',
            'Bulgaria', 'Burkina Faso', 'Burundi', 'Cambodia', 'Cameroon', 'Canada', 'Cape Verde',
            'Cayman Islands', 'Central African Republic', 'Chad', 'Chile', 'China',
            'Christmas Island', 'Cocos Keeling Islands', 'Colombia', 'Comoros', 'Congo',
            'Cook Islands', 'Costa Rica', 'Cote D\'ivoire', 'Croatia', 'Cuba', 'Cyprus',
            'Czech Republic', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic', 'Ecuador',
            'Egypt', 'El Salvador', 'Equatorial Guinea', 'Eritrea', 'Estonia', 'Ethiopia',
            'Malvinas', 'Faroe Islands', 'Fiji', 'Finland', 'France', 'French Guiana',
            'French Polynesia', 'Gabon', 'Gambia', 'Georgia', 'Germany', 'Ghana', 'Gibraltar',
            'Greece', 'Greenland', 'Grenada', 'Guadeloupe', 'Guam', 'Guatemala', 'Guernsey',
            'Guinea', 'Guinea-bissau', 'Guyana', 'Haiti', 'Vatican', 'Honduras', 'Hong Kong',
            'Hungary', 'Iceland', 'India', 'Indonesia', 'Iran, Islamic Republic of', 'Iraq',
            'Ireland', 'Isle of Man', 'Palestine', 'Italy', 'Jamaica', 'Japan', 'Jersey',
            'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', 'Korea, Republic of', 'Kuwait',
            'Kyrgyzstan', 'Latvia', 'Lebanon', 'Lesotho', 'Liberia', 'Libyan Arab Jamahiriya',
            'Liechtenstein', 'Lithuania', 'Luxembourg', 'Madagascar', 'Malawi', 'Malaysia',
            'Maldives', 'Mali', 'Malta', 'Marshall Islands', 'Martinique', 'Mauritania',
            'Mauritius', 'Mayotte', 'Mexico', 'Moldova, Republic of', 'Monaco', 'Mongolia',
            'Montenegro', 'Montserrat', 'Morocco', 'Mozambique', 'Myanmar', 'Namibia', 'Nauru',
            'Nepal', 'Netherlands', 'Netherlands Antilles', 'New Caledonia', 'New Zealand',
            'Nicaragua', 'Niger', 'Nigeria', 'Niue', 'Norfolk Island', 'Northern Mariana Islands',
            'Norway', 'Oman', 'Pakistan', 'Palau', 'Panama', 'Papua New Guinea', 'Paraguay',
            'Peru', 'Philippines', 'Pitcairn', 'Poland', 'Portugal', 'Puerto Rico', 'Qatar',
            'Reunion', 'Romania', 'Russian Federation', 'Rwanda', 'Saint Helena', 'Saint Lucia',
            'Samoa', 'San Marino', 'Saudi Arabia', 'Senegal', 'Serbia', 'Seychelles',
            'Sierra Leone', 'Singapore', 'Slovakia', 'Slovenia', 'Solomon Islands',
            'Somalia', 'South Africa', 'Spain', 'Sri Lanka', 'Sudan', 'Suriname',
            'Svalbard and Jan Mayen', 'Swaziland', 'Sweden', 'Switzerland',
            'Syrian Arab Republic', 'Taiwan', 'Tajikistan', 'Tanzania', 'Thailand',
            'Timor-leste', 'Togo', 'Tokelau', 'Tonga', 'Trinidad and Tobago', 'Tunisia',
            'Turkey', 'Turkmenistan', 'Turks and Caicos Islands', 'Tuvalu', 'Uganda',
            'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States',
            'Uruguay', 'Uzbekistan', 'Vanuatu', 'Venezuela', 'Viet Nam',
            'Virgin Islands, British', 'Wallis and Futuna', 'Western Sahara',
            'Yemen', 'Zambia', 'Zimbabwe',
        ];

        return [
            'favorite_book_genre' => [
                'nullable',
                'in:' . implode(',', $allowedBookCategories),
            ],
            'language' => [
                'nullable',
                'in:' . implode(',', $allowedLanguages),
            ],
            'country' => [
                'nullable',
                'in:' . implode(',', $allowedCountries),
            ],
            'birthday' => [
                'nullable',
                'date_format:Y-m-d',
                'before_or_equal:' . now()->subYears(13)->format('Y-m-d'),
            ],
            'city' => [
                'nullable',
                'between:3,15',
                'alpha',

            ],
            'phone' => [
                'nullable',
                'between:6,14',
                'regex:/^\+[\d\s]+$/',
            ],
            'gender' => [
                'nullable',
                'in:' . implode(',', $allowedGender),
            ],
            'age' => [
                'nullable',
                'in:' . implode(',', $allowedAge),
            ],
            'worst_book' => [
                'nullable',
                'string',
                'between:2,25',
                'regex:/^[A-Za-z0-9\s]+$/',
            ],
            'fav_author' => [
                'nullable',
                'string',
                'between:2,25',
                'regex:/^[A-Za-z0-9\s]+$/',
            ],
            'fav_book' => [
                'nullable',
                'string',
                'between:2,25',
                'regex:/^[A-Za-z0-9\s]+$/',
            ],
            'description' => [
                'nullable',
                'string',
                'regex:/^[a-zA-Z0-9\s\p{P}]+$/u',
                'between:5,200',
            ],

        ];
    }

    public function messages()
    {
        if (App::getLocale() == 'ar') {
            return [
                'favorite_book_genre.in' => 'النوع المفضل للكتب الذي تم اختياره غير صحيح.',
                'language.in' => 'اللغة المختارة غير صحيحة.',
                'country.in' => 'الدولة المختارة غير صحيحة.',
                'birthday.date_format' => 'يجب أن يكون تاريخ الميلاد في الشكل "Y-m-d".',
                'birthday.before_or_equal' => 'يجب أن تكون على الأقل 13 عامًا للتسجيل.',
                'city.between' => 'يجب أن يحتوي حقل المدينة على ما بين 3 و 15 حرفًا.',
                'city.alpha' => 'يجب أن يحتوي حقل المدينة على أحرف أبجدية فقط.',
                'phone.between' => 'حقل الهاتف غير صحيح.',
                'phone.regex' => 'حقل الهاتف غير صحيح.',
                'gender.in' => 'الجنس المختار غير صحيح.',
                'age.in' => 'العمر المختار غير صحيح.',
                'worst_book.string' => 'حقل أسوأ كتاب غير صحيح.',
                'worst_book.between' => 'يجب أن يحتوي حقل أسوأ كتاب على ما بين 2 و 25 حرفًا.',
                'worst_book.regex' => 'حقل أسوأ كتاب غير صحيح.',
                'fav_author.string' => 'حقل الكاتب المفضل غير صحيح.',
                'fav_author.between' => 'يجب أن يحتوي حقل الكاتب المفضل على ما بين 2 و 25 حرفًا.',
                'fav_author.regex' => 'حقل الكاتب المفضل غير صحيح.',
                'fav_book.string' => 'حقل الكتاب المفضل غير صحيح.',
                'fav_book.between' => 'يجب أن يحتوي حقل الكتاب المفضل على ما بين 2 و 25 حرفًا.',
                'fav_book.regex' => 'حقل الكتاب المفضل غير صحيح.',
                'description.string' => 'حقل الوصف غير صحيح.',
                'description.regex' => 'حقل الوصف غير صحيح.',
                'description.between' => 'يجب أن يحتوي حقل الوصف على ما بين 5 و 200 حرف.',
            ];
        } else {
            return [
                'messages' => [
                    'favorite_book_genre.in' => 'The selected favorite book genre is invalid.',
                    'language.in' => 'The selected language is invalid.',
                    'country.in' => 'The selected country is invalid.',
                    'birthday.date_format' => 'The birthday must be in the format "Y-m-d".',
                    'birthday.before_or_equal' => 'The birthday must be before or equal to ' . now()->subYears(13)->format('Y-m-d') . '.',
                    'city.between' => 'The city field must be between 3 and 15 characters.',
                    'city.alpha' => 'The city field must contain only alphabetic characters.',
                    'phone.between' => 'The phone field is invalid.',
                    'phone.regex' => 'The phone field is invalid.',
                    'gender.in' => 'The selected gender is invalid.',
                    'age.in' => 'The selected age is invalid.',
                    'worst_book.string' => 'The worst book field is invalid.',
                    'worst_book.between' => 'The worst book field must be between 2 and 25 characters.',
                    'worst_book.regex' => 'The worst book field is invalid.',
                    'fav_author.string' => 'The favorite author field is invalid.',
                    'fav_author.between' => 'The favorite author field must be between 2 and 25 characters.',
                    'fav_author.regex' => 'The favorite author field is invalid.',
                    'fav_book.string' => 'The favorite book field is invalid.',
                    'fav_book.between' => 'The favorite book field must be between 2 and 25 characters.',
                    'fav_book.regex' => 'The favorite book field is invalid.',
                    'description.string' => 'The description field is invalid.',
                    'description.regex' => 'The description field is invalid.',
                    'description.between' => 'The description field must be between 5 and 200 characters.',
                ],
            ];
        }
    }
}
