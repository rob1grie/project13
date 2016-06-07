@extends('layouts.main')

@section('title', 'Add Project13')

@section('content')
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">Add Project13</h3>
	</div>
	<div class="panel-body">
		{!! Form::open(array('action' => 'Project13sController@store', 'enctype' => 'multipart/form-data')) !!}
		<div class="form-group">
			{!! Form::label('organization', 'Select Organization: ') !!}
			{{ Form::select('organization', $organizations) }}
		</div>

		<div class="form-group">
			{!! Form::label('org_admin', 'Select Organization\'s Administrator: ') !!}
			{{ Form::select('org_admin', $users) }}
		</div>

		{!! Form::submit('Save', $attributes = ['class' => 'btn btn-primary btn-10rem']) !!}
		<a class="btn btn-warning btn-10rem" href="{{ URL::previous() }}">Cancel</a>

		{!! Form::close() !!}
	</div>
</div>
@stop