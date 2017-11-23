<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCurriculumsubjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('curriculumsubjects', function (Blueprint $table) {
            $table->increments('curriculumsubject_id');
            $table->integer('curriculum_id')->unsigned();
            $table->integer('subject_id')->unsigned();
            $table->integer('sem')->unsigned();
            $table->integer('year')->unsigned();
            
            $table->rememberToken();
            $table->timestamps();

            $table->foreign('curriculum_id')->references('curriculum_id')->on('curriculumsubjects');
            $table->foreign('subject_id')->references('subject_id')->on('subjects');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('curriculumsubjects');
    }
}
