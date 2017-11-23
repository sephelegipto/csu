<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentchecklistsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('studentchecklists', function (Blueprint $table) {
            $table->increments('studentchecklist_id');
            $table->integer('user_id')->unsigned();
            $table->integer('curriculum_id')->unsigned();
            $table->integer('grade')->unsigned();
       
            
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('studentchecklists');
    }
}
