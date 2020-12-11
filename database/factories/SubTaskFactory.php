<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use App\SubTask;
use App\Task;
use Faker\Generator as Faker;

$factory->define(SubTask::class, function (Faker $faker) {
    return [
        "content"=>$faker->sentence(),
        // "task_id"=>$faker->randomElement(Task::pluck('id')->toArray())    
    ];
});
