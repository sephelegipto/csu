<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $table = 'courses';
    protected $fillable = ['name', 'department_id'];
    protected $primaryKey = 'course_id';
    public $timestamps = false;
}
