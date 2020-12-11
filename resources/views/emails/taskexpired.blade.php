
@extends('layouts.app')
@section('content')
<div style="border:1px solid red;border-radius:5px;padding:10px;box-size:border-box;">
<h1>{{$details['subject']}}<h1>
<span style="font-size:13px">{{$details['mailto']}}</span>
<p style="font-size:15px;line-height:25px;">
    {{$details['body']}}
</p>
</div>

@endsection

