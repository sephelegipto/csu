<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Curriculum extends Model
{
    protected $table = 'curriculums';
    protected $fillable = ['year', 'course_id'];
    protected $primaryKey = 'curriculum_id';
    public $timestamps = false;
}
