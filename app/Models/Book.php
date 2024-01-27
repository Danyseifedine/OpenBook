<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'author',
        'publication_date',
        'cover_image',
        'description',
        'description_arabic',
        'category_arabic',
        'language_arabic',
        'category',
        'language',
        'pages',
        'world_rate',
        'pdf'
    ];
}
