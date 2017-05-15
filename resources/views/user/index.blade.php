@extends('layouts.main')

@section('title', 'Users List')

@section('sidebar')
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            Menu
        </h3>
    </div>
    <div class="list-group">
        <a class="list-group-item" href="/users/create">Add User</a>
    </div>
</div>
@stop 

@section('content')
<h1>Users List</h1>
<table class="table table-hover table-bordered">
    <thead>
        <tr>
            <th>Name</th>
			<th>Username</th>
			<th>Role</th>
            <th>Organization</th>
        </tr>
    </thead>
    <tbody>
        @foreach($users as $user)
        <tr>
            <td><a href='/users/{{ $user->id }}'>{{ $user->last_name}}, {{ $user->first_name }}</a></td>
			<td>{{ $user->username }}</td>
			<td>{{ $user->role->display_name }}</td>
			<td>{{ $user->organization->name }}, {{ $user->organization->city }}, {{ $user->organization->state }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
@stop
