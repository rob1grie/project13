@extends('layouts.main')

@section('title', 'Member Detail')

@section('sidebar')
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            Menu
        </h3>
    </div>
    <div class="list-group">
        <a class="list-group-item" href="create">Add Member</a>
        <a class="list-group-item" href="{{ $member->id }}/edit">Edit Member</a>
        <a class="list-group-item" href="/members/">Return to Member List</a>
    </div>
</div>
@stop 

@section('content')
<div class="panel panel-default">
    <h3 class="pad-left-20">{{ $member->first_name }} {{ $member->last_name }}</h3>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-2 control-label">Username</div> 
            <div class="col-md-9">{{ $member->username }}</div>
			<div class="col-md-2 control-label">Email</div>
            <div class="col-md-9">{{ $member->email }}</div>
			
            <div class="col-md-2 control-label">Role</div>
            <div class="col-md-9">{{ $member->role->role }}&nbsp;</div>
            <div class="col-md-2 control-label">Organization</div>
            <div class="col-md-9">{{ $member->organization->name }}&nbsp;</div>
        </div>
    </div>
</div>
@stop

@section('script')
<script type="text/javascript">	function process() {}</script>
@stop

