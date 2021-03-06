@extends('layouts.main')

@section('title', 'Add Member')

@section('content')
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">Add Member</h3>
	</div>
	<div class="panel-body">
		{!! Form::open(array('action' => 'MembersController@store', 'enctype' => 'multipart/form-data')) !!}

		<div class="form-group form-inline">
			{!! Form::label('username', 'Username', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('username', $value= $username, 
				$attributes = ['class' => 'form-control', 'name' => 'username', 'readonly' => 'readonly']) !!}
		</div>

		<div class="form-group form-inline">
			{!! Form::label('first_name', 'First Name', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('first_name', $value=null, $attributes = ['class' => 'form-control', 'name' => 'first_name']) !!}
		</div>
		<div class="form-group form-inline">
			{!! Form::label('last_name', 'Last Name', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('last_name', $value=null, $attributes = ['class' => 'form-control', 'name' => 'last_name']) !!}
		</div>

		<div class="form-group form-inline">
			{!! Form::label('email', 'Email', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('email', $value=null, $attributes = ['class' => 'form-control', 'name' => 'email']) !!}
		</div>

		<div class="form-group form-inline">
			{!! Form::label('organization', 'Organization', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{{ Form::select('organization', $organizations) }}
		</div>
		
		{!! Form::hidden('password', 'password') !!}

		{!! Form::submit('Save', $attributes = ['class' => 'btn btn-primary btn-10rem']) !!}
		<a class="btn btn-warning btn-10rem" href="{{ URL::previous() }}">Cancel</a>

		{!! Form::close() !!}
	</div>
</div>
@stop

@section('script')
<script type="text/javascript">	function process() {}</script>
@stop

