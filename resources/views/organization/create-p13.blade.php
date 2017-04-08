@extends('layouts.main')

@section('script')
<script type="text/javascript" src="/js/ajaxJS.js"></script>
<script type="text/javascript" src="/js/json2.js"></script>
<script src="/js/project13Create.js" type="text/javascript"></script>
<script>
var orgid = <?php echo $organization->id; ?>;
</script>
@stop

@section('title', 'Add Project13')

@section('content')
<div class="panel panel-default">
	<div class="panel-body">
		{!! Form::open(array('action' => 'Project13sController@store', 'enctype' => 'multipart/form-data')) !!}
		<div class="form-group">
			<h3>Add Project13 for {{ $organization->name }} </h3>
		</div>
		<div id="testcontent" />
		<div>
            <table>
                <thead>
                    <tr>
                        <th>Role</th>
                        <th>Member Name</th>
                        <th>[Reset]</th>
                    </tr>
                    <tr>
                        <td>{!! Form::label('white_hat', 'White Hat') !!}</td>
                        <td>
                            {!! Form::select('white_hat') !!}
                            {!! Form::button(null, [
                            'id'=>'white_hat-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td class="blue-label">{!! Form::label('blue_hat_1', 'Blue Hat 1') !!}</td>
                        <td>
                            {!! Form::select('blue_hat_1') !!}
                            {!! Form::button(null, [
                            'id'=>'blue_hat_1-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td class="yellow-label">{!! Form::label('yellow_hat_1-1', 'Yellow Hat 1') !!}</td>
                        <td>
                            {!! Form::select('yellow_hat_1-1') !!}
                            {!! Form::button(null, [
                            'id'=>'yellow_hat_1-1-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td class="yellow-label">{!! Form::label('yellow_hat_1-2', 'Yellow Hat 2') !!}</td>
                        <td>
                            {!! Form::select('yellow_hat_1-2') !!}
                            {!! Form::button(null, [
                            'id'=>'yellow_hat_1-2-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td class="yellow-label">{!! Form::label('yellow_hat_1-3', 'Yellow Hat 3') !!}</td>
                        <td>
                            {!! Form::select('yellow_hat_1-3') !!}
                            {!! Form::button(null, [
                            'id'=>'yellow_hat_1-3-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td class="blue-label">{!! Form::label('blue_hat_2', 'Blue Hat 2') !!}</td>
                        <td>
                            {!! Form::select('blue_hat_2') !!}
                            {!! Form::button(null, [
                            'id'=>'blue_hat_2-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td class="yellow-label">{!! Form::label('yellow_hat_2-1', 'Yellow Hat 1') !!}</td>
                        <td>
                            {!! Form::select('yellow_hat_2-1') !!}
                            {!! Form::button(null, [
                            'id'=>'yellow_hat_2-1-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td class="yellow-label">{!! Form::label('yellow_hat_2-2', 'Yellow Hat 2') !!}</td>
                        <td>
                            {!! Form::select('yellow_hat_2-2') !!}
                            {!! Form::button(null, [
                            'id'=>'yellow_hat_2-2-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td class="yellow-label">{!! Form::label('yellow_hat_2-3', 'Yellow Hat 3') !!}</td>
                        <td>
                            {!! Form::select('yellow_hat_2-3') !!}
                            {!! Form::button(null, [
                            'id'=>'yellow_hat_2-3-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td class="blue-label">{!! Form::label('blue_hat_3', 'Blue Hat 3') !!}</td>
                        <td>
                            {!! Form::select('blue_hat_3') !!}
                            {!! Form::button(null, [
                            'id'=>'blue_hat_3-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td class="yellow-label">{!! Form::label('yellow_hat_3-1', 'Yellow Hat 1') !!}</td>
                        <td>
                            {!! Form::select('yellow_hat_3-1') !!}
                            {!! Form::button(null, [
                            'id'=>'yellow_hat_3-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td class="yellow-label">{!! Form::label('yellow_hat_3-2', 'Yellow Hat 2') !!}</td>
                        <td>
                            {!! Form::select('yellow_hat_3-2') !!}
                            {!! Form::button(null, [
                            'id'=>'yellow_hat_3-2-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td class="yellow-label">{!! Form::label('yellow_hat_3-3', 'Yellow Hat 3') !!}</td>
                        <td>
                            {!! Form::select('yellow_hat_3-3') !!}
                            {!! Form::button(null, [
                            'id'=>'yellow_hat_3-3-reset',
                            'onclick'=>'resetControl()',
                            'class'=>'glyphicon glyphicon-remove']) !!}
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="button-row">
                                {!! Form::submit('Save', $attributes = ['class' => 'btn btn-primary btn-10rem']) !!}
                                <a class="btn btn-warning btn-10rem" href="{{ URL::previous() }}">Cancel</a>
                            </div>

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
