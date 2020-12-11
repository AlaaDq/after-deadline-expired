<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Category;
use App\Model;
use App\Task;
use Faker\Generator as Faker;

$factory->define(Category::class, function (Faker $faker) {
    return [
        'name'=>$faker->name(),
        'color'=>$faker->colorName(),
        // 'task_id'=>$faker->randomElement(Task::pluck('id')->toArray())    
    ];
});
