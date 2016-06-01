@extends('layouts.main')

@section('title', 'Edit User')

@section('content')
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">Edit User</h3>
	</div>
	<div class="panel-body">
		{!! Form::open(array('action' => ['UsersController@update', $user->id], 'method' => 'PUT', 'enctype' => 'multipart/form-data')) !!}
		<div class="form-group">
			{!! Form::label('first_name', 'First Name', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('first_name', $value=$user->first_name, $attributes = ['class' => 'form-control', 'name' => 'first_name']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('last_name', 'Last Name', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('last_name', $value=$user->first_name, $attributes = ['class' => 'form-control', 'name' => 'last_name']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('email', 'Email', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('email', $value=$user->email, $attributes = ['class' => 'form-control', 'name' => 'email']) !!}
		</div>

		<div class="form-group form-inline">
			{!! Form::label('role', 'Role', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{{ Form::select('role', $roles, $user->role_id) }}
		</div>

		<div class="form-group form-inline">
			{!! Form::label('organization', 'Organization', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{{ Form::select('organization', $organizations, $user->organization_id) }}
		</div>
		
		{!! Form::submit('Save Changes', $attributes = ['class' => 'btn btn-primary btn-15rem']) !!} 
		<a class="btn btn-warning btn-15rem" href="{{ URL::previous() }}">Cancel</a>

		{!! Form::close() !!}
	</div>
</div>
@stop