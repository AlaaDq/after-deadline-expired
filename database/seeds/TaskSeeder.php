<?php

use Illuminate\Database\Seeder;

class TaskSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // factory(App\Task::class, 11)->create();
        factory(App\Task::class, 11)->create()->each(function ($task) {
            // $task->categories()->save(factory(App\Category::class)->make());
            $task->subTasks()->save(factory(App\SubTask::class)->make());
        });
    }
}
