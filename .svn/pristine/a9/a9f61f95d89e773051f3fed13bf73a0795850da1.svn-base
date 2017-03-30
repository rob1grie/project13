Route::get('api/dropdown', function(){
  $input = Input::get('option');
	$maker = Maker::find($input);
	$models = $maker->models();
	return Response::eloquent($models->get(['id','name']));
});


jQuery(document).ready(function($){
  	$('#make').change(function(){
			$.get("{{ url('api/dropdown')}}", 
				{ option: $(this).val() }, 
				function(data) {
					var model = $('#model');
					model.empty();
 
					$.each(data, function(index, element) {
			            model.append("<option value='"+ element.id +"'>" + element.name + "</option>");
			        });
				});
		});
	});



<h1>Dropdown demo</h1>
      	{{ Form::open() }}
    		    <select id="make" name="make">
    		    	<option>Select Car Make</option>
    		        <option value="1">Toyota</option>
    		        <option value="2">Honda</option>
    		        <option value="3">Mercedes</option>
    		    </select>
    		    <br>
    		    <select id="model" name="model">
    		    	<option>Please choose car make first</option>
    		    </select>
    		{{ Form::close();}}
