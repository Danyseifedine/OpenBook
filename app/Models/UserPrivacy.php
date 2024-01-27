<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserPrivacy extends Model
{
    use HasFactory;

    protected $table = 'user_privacy';

    protected $fillable = [
        'user_id',
        'show_language',
        'show_country',
        'show_city',
        'show_phone',
        'show_birthday',
        'show_gender',
        'show_fav_auth',
        'show_favorite_book_genre',
        'show_worst_book',
        'show_fav_book',
        'show_description'
    ];
}
