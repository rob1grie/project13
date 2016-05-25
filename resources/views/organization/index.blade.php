@extends('layouts.main')

@section('title', 'Organizations List')

@section('sidebar')
<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			Main Menu
		</h3>
	</div>
	<div class="list-group">
	<a class="list-group-item" href="organizations/create">Add Organization</a>
	</div>
</div>
@stop 

@section('content')
<h1>Organizations List</h1>
@stop
