@extends('layouts.main')

@section('title', 'Login')

@section('content')
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">Add Member</h3>
	</div>
	<div class="panel-body">
		{!! Form::open(array('url' => '/login', 'enctype' => 'multipart/form-data')) !!}

		<div class="form-group form-inline">
			{!! Form::label('username', 'Username', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('username') !!}
		</div>

		<div class="form-group form-inline">
			{!! Form::label('password', 'Password', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::password('password') !!}
		</div>
		
		{!! Form::submit('Login', $attributes = ['class' => 'btn btn-primary btn-10rem']) !!}
		<a class="btn btn-warning btn-10rem" href="{{ URL::previous() }}">Cancel</a>

		{!! Form::close() !!}
	</div>
</div>
@stop