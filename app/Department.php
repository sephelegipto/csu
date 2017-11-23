<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    protected $table = 'departments';
    protected $fillable = ['name', 'abbre'];
    protected $primaryKey = 'department_id';
    public $timestamps = false;
}
