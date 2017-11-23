<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CurriculumSubject extends Model
{
    protected $table = 'curriculumsubjects';
    protected $fillable = ['curriculum_id', 'subject_id', 'sem', 'year'];
    protected $primaryKey = 'curriculumsubject_id';
    public $timestamps = false;
}
