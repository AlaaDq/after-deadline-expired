<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Task;
use Faker\Generator as Faker;
use Carbon\Carbon;

$factory->define(Task::class, function (Faker $faker) {
    return [
        'description'=>$faker->sentence(),
        'deadline'=>Carbon::now()->addMinutes($faker->numberBetween(11,111)),
        'end_flag'=>$faker->boolean()
    ];
});
