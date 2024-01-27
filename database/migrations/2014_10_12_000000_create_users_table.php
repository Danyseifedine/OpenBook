<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->string('password', 100);
            $table->tinyInteger("role")->default(0);
            $table->string('ProfileImage')->nullable();
            $table->string('language')->nullable();
            $table->string('country')->nullable();
            $table->string('city')->nullable();
            $table->string('phone')->nullable();
            $table->date('birthday')->nullable();
            $table->string('gender')->nullable();
            $table->text('description')->nullable();
            $table->string('age')->nullable();
            $table->string('fav_author')->nullable();
            $table->string('favorite_book_genre')->nullable();
            $table->string('worst_book')->nullable();
            $table->string('fav_book')->nullable();
            $table->string('active')->default('active');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
