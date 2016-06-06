@extends('layouts.main')

@section('title', 'User Detail')

@section('sidebar')
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            Menu
        </h3>
    </div>
    <div class="list-group">
        <a class="list-group-item" href="create">Add User</a>
        <a class="list-group-item" href="{{ $user->id }}/edit">Edit User</a>
        <a class="list-group-item" href="/users/">Return to List</a>
    </div>
</div>
@stop 

@section('content')
<div class="panel panel-default">
    <h3 class="pad-left-20">{{ $user->first_name }} {{ $user->last_name }}</h3>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-2 control-label">Username</div> 
            <div class="col-md-9">{{ $user->username }}</div>
			<div class="col-md-2 control-label">Email</div>
            <div class="col-md-9">{{ $user->email }}</div>
			
            <div class="col-md-2 control-label">Role</div>
            <div class="col-md-9">{{ $user->role->role }}&nbsp;</div>
            <div class="col-md-2 control-label">Organization</div>
            <div class="col-md-9">{{ $user->organization->name }}&nbsp;</div>
        </div>
    </div>
</div>
@stop