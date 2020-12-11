<?php

namespace App\Http\Requests;

use App\Task;
use Illuminate\Foundation\Http\FormRequest;

class StoreTaskRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            
        ];
    }

    public function processStore(){

        //the mail sending logic hidden in model observed event
        $task=Task::create($this->only(['description','deadline','end_flag','created_at']));

        $task->categories()->createMany($this['categories']);
        $task->subTasks()->createMany($this['subTasks']);

    }
}
