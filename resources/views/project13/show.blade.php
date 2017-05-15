@extends('layouts.main')

@section('title', 'Project13 Detail')

@section('sidebar')
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            Menu
        </h3>
    </div>
    <div class="list-group">
        <a class="list-group-item" href="create">Add Project13</a>
        <a class="list-group-item" href="{{ $p13->id }}/edit">Edit Project13</a>
        <a class="list-group-item" href="/project13s/">Return to List</a>
    </div>
</div>
@stop

@section('content')
<div class="panel panel-default">
    <h3 class="pad-left-5">{{ $p13->organization->name }}</h3>
    <h4 class="pad-left-15">P13-{{ $p13->ordinal_count }}</h4>
    <div class="panel-body">
        <div class="row" >
            <table class="table table-hover table-bordered">
                <thead>
                    <tr>
                        <th>Member Name</th>
                        <th>Role</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($users as $user)
                    <tr>
                        <td>{{ $user->last_name}}, {{ $user->first_name }}</td>
                        <td>{{ $user->role->display_name}} ({{ $user->blue_hat_id }})</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@stop