<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserPrivacyTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('user_privacy', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->unique();
            $table->boolean('show_language')->default(false);
            $table->boolean('show_country')->default(false);
            $table->boolean('show_city')->default(false);
            $table->boolean('show_phone')->default(false);
            $table->boolean("show_birthday")->default(false);
            $table->boolean("show_gender")->default(false);
            $table->boolean("show_fav_auth")->default(false);
            $table->boolean("show_favorite_book_genre")->default(false);
            $table->boolean("show_worst_book")->default(false);
            $table->boolean("show_fav_book")->default(false);
            $table->boolean("show_description")->default(false);
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('user_privacy');
    }
}
