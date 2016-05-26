@extends('layouts.main')

@section('title', 'Organization Detail')

@section('sidebar')
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            Menu
        </h3>
    </div>
    <div class="list-group">
        <a class="list-group-item" href="create">Add Organization</a>
        <a class="list-group-item" href="{{ $org->id }}/edit">Edit Organization</a>
        <a class="list-group-item" href="/organizations/">Return to List</a>
    </div>
</div>
@stop 

@section('content')
<div class="panel panel-default">
    <h3>{{ $org->name }}</h3>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-3 text-right">Address:</div> 
            <div class="col-md-9">{{ $org->address1 }}</div>
            @if($org->address2)
            <div class="col-md-3">&nbsp;</div> 
            <div class="col-md-9">{{ $org->address2 }}</div>
            @endif
            <div class="col-md-3">&nbsp;</div> 
            <div class="col-md-9">{{ $org->city }}, {{ $org->state }} {{ $org->zipcode }}</div>
            <div class="col-md-3 text-right">Phone (main):</div>
            <div class="col-md-9">{{ $org->main_phone }}&nbsp;</div>
            <div class="col-md-3 text-right">Phone (alternate):</div>
            <div class="col-md-9">{{ $org->alt_phone }}&nbsp;</div>
        </div>
    </div>
</div>
@stop