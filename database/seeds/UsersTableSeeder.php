<?php

use Illuminate\Database\Seeder;
use App\User;
class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       // User::create([
       //    'role_id'=>2,
       //    'active'=>1,
       // 		'name'=>'user',
       // 		'username'=>'user',
       // 		'email'=>'user@gmail.com',
       // 		'password'=>bcrypt('themigrants'),
       // 		'remember_token'=>str_random(10),
       // 	]);

     $this->call(UsersTableSeeder::class);
         factory('App\User',20)->create();
    }
}
