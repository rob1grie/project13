@extends('layouts.main')

@section('title', 'Organization Detail')

@section('content')
<div class="panel panel-default">
    <h3>{{ $org->name }}</h3>
    <div class="panel-body">
        <div class="row">
            <ul class="list-group">
                <li class="list-group-item"><strong>Address:</strong> {{ $org->address1 }}</li>
                @if($org->address2)
                <li class="list-group-item">{{ $org->address2 }}</li>
                @endif
                <li class="list-group-item">{{ $org->city }}, {{ $org->state }} {{ $org->zipcode }}</li>
            </ul>
        </div>
    </div>
</div>
@stop