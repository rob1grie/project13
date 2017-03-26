@extends('layouts.main')

@section('title', 'Members List')

@section('sidebar')
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            Menu
        </h3>
    </div>
    <div class="list-group">
        <a class="list-group-item" href="members/create">Add Member</a>
    </div>
</div>
@stop 

@section('content')
<h1>Members List</h1>
<table class="table table-hover table-bordered">
    <thead>
        <tr>
            <th>Name</th>
			<th>Membername</th>
			<th>Role</th>
            <th>Organization</th>
        </tr>
    </thead>
    <tbody>
        @foreach($members as $member)
        <tr>
            <td><a href='/members/{{ $member->id }}'>{{ $member->last_name}}, {{ $member->first_name }}</a></td>
			<td>{{ $member->membername }}</td>
			<td>{{ $member->role->role }}</td>
			<td>{{ $member->organization->name }}, {{ $member->organization->city }}, {{ $member->organization->state }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
@stop
