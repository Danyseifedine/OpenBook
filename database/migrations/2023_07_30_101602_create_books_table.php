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
        Schema::create('books', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('author');
            $table->date('publication_date');
            $table->string('cover_image')->nullable();
            $table->text('description');
            $table->text('description_arabic');
            $table->string('category');
            $table->string('category_arabic');
            $table->string('language');
            $table->string('language_arabic');
            $table->integer('pages');
            $table->tinyInteger('world_rate');
            $table->string('pdf')->nullable();
            $table->integer('download_count')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('books');
    }
};
