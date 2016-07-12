@section('script')

@stop

@extends('layouts.main')

@section('title', 'Add Project13')

@section('content')
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">Add Project13</h3>
	</div>
	<div class="panel-body">
		{!! Form::open(array('action' => 'Project13sController@store', 'enctype' => 'multipart/form-data')) !!}
		@if (!@is_null($organizations))
		<div class="form-group">
			{!! Form::label('organization', 'Select Organization: ') !!}
			{{ Form::select('organization', $organizations) }}
		</div>
		<div class="form-group">
			{!! Form::label('org_admin', 'Select Organization\'s Administrator: ') !!}
			{{ Form::select('org_admin', $users) }}
		</div>
		@else
		<div class="form-group">
			<h3>for {{ $organization->name }} </h3>
		</div>
		@endif
		
		<div>
			<table>
				<thead>
					<tr>
						<th>Role</th>
						<th>Member Name</th>
					</tr>
					<tr>
						<td>White Hat</td>
						<td>
							{!! Form::select('white_hat', $users) !!}
						</td>
					</tr>
					<tr>
						<td class="pad-left-10">Blue Hat 1</td>
						<td>
							{!! Form::select('blue_hat_1', $users) !!}
						</td>
					</tr>
					<tr>
						<td class="pad-left-20">Yellow Hat 1</td>
						<td>
							{!! Form::select('yellow_hat_1-1', $users) !!}
						</td>
					</tr>
					<tr>
						<td class="pad-left-20">Yellow Hat 2</td>
						<td>
							{!! Form::select('yellow_hat_1-2', $users) !!}
						</td>
					</tr>
					<tr>
						<td class="pad-left-20">Yellow Hat 3</td>
						<td>
							{!! Form::select('yellow_hat_1-3', $users) !!}
						</td>
					</tr>
					<tr>
						<td class="pad-left-10">Blue Hat 2</td>
						<td>
							{!! Form::select('blue_hat_2', $users) !!}
						</td>
					</tr>
					<tr>
						<td class="pad-left-20">Yellow Hat 1</td>
						<td>
							{!! Form::select('yellow_hat_2-1', $users) !!}
						</td>
					</tr>
					<tr>
						<td class="pad-left-20">Yellow Hat 2</td>
						<td>
							{!! Form::select('yellow_hat_2-2', $users) !!}
						</td>
					</tr>
					<tr>
						<td class="pad-left-20">Yellow Hat 3</td>
						<td>
							{!! Form::select('yellow_hat_2-3', $users) !!}
						</td>
					</tr>
					<tr>
						<td class="pad-left-10">Blue Hat 3</td>
						<td>
							{!! Form::select('blue_hat_3', $users) !!}
						</td>
					</tr>
					<tr>
						<td class="pad-left-20">Yellow Hat 1</td>
						<td>
							{!! Form::select('yellow_hat_3-1', $users) !!}
						</td>
					</tr>
					<tr>
						<td class="pad-left-20">Yellow Hat 1</td>
						<td>
							{!! Form::select('yellow_hat_3-2', $users) !!}
						</td>
					</tr>
					<tr>
						<td class="pad-left-20">Yellow Hat 1</td>
						<td>
							{!! Form::select('yellow_hat_3-3', $users) !!}
						</td>
					</tr>
				</thead>
			</table>
		</div>

		{!! Form::submit('Save', $attributes = ['class' => 'btn btn-primary btn-10rem']) !!}
		<a class="btn btn-warning btn-10rem" href="{{ URL::previous() }}">Cancel</a>

		{!! Form::close() !!}
	</div>
</div>
@stop