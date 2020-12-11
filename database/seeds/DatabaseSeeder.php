<?php

use App\Category;
use App\Task;
use Illuminate\Database\Seeder;
use Faker\Generator as Faker;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
        
        //$this->call(TaskSeeder::class);

        // $this->call(CategorySeeder::class);
        // $this->call(SubTaskSeeder::class);
        
        // $tasks=Task::all();
        // foreach($tasks as $task)
        // {
        //     $task->categories()->syncWithoutDetaching( $faker->randomElement(Category::pluck('id')->toArray()) );
        // }
        
    }

    // php artisan db:seed

}
