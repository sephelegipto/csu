<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
	protected $table = 'subjects';
	protected $fillable = ['subject_code', 'descriptive_title', 
							'prerequisite', 'units', 
							'lec_hours', 'lab_hours', 
							'contact_hours'
						];
	protected $primaryKey = 'subject_id';
	public $timestamps = false;
}
