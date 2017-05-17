@extends('layouts.main')

@section('title', 'Edit Member')

@section('content')
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">Edit Member</h3>
	</div>
	<div class="panel-body">
		{!! Form::open(array('action' => ['MembersController@update', $member->id], 'method' => 'PUT', 'enctype' => 'multipart/form-data')) !!}
		<div class="form-group">
			{!! Form::label('username', 'Username', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('username', $value=$member->username, $attributes = ['class' => 'form-control', 'name' => 'username', 'disabled']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('first_name', 'First Name', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('first_name', $value=$member->first_name, $attributes = ['class' => 'form-control', 'name' => 'first_name']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('last_name', 'Last Name', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('last_name', $value=$member->last_name, $attributes = ['class' => 'form-control', 'name' => 'last_name']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('email', 'Email', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('email', $value=$member->email, $attributes = ['class' => 'form-control', 'name' => 'email']) !!}
		</div>

		<div class="form-group form-inline">
			{!! Form::label('role', 'Role', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{{ Form::select('role', $roles, $member->role_id) }}
		</div>

		<div class="form-group form-inline">
			{!! Form::label('organization', 'Organization', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{{ Form::select('organization', $organizations, $member->organization_id) }}
		</div>
		
		{!! Form::submit('Save Changes', $attributes = ['class' => 'btn btn-primary btn-15rem']) !!} 
		<a class="btn btn-warning btn-15rem" href="{{ URL::previous() }}">Cancel</a>

		{!! Form::close() !!}
	</div>
</div>
@stop

@section('script')
<script type="text/javascript">	function process() {}</script>
@stop

