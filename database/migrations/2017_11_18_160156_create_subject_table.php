<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSubjectTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subjects', function (Blueprint $table) {
            $table->increments('subject_id');
            $table->string('subject_code')->nullable();
            $table->string('descriptive_title')->nullable();
            $table->string('prerequisite')->nullable();
            $table->string('units')->nullable();
            $table->string('lec_hours')->nullable();
            $table->string('lab_hours')->nullable();
            $table->string('contact_hours')->nullable();
            $table->integer('course_id')->unsigned();
            $table->rememberToken();
            $table->timestamps();

            $table->foreign('course_id')->references('course_id')->on('courses');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('subject');
    }
}
