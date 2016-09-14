

var availItems = [];
var usedItems = [];
var selectControls = $("select[id!='organization']"); // $("a[target!='_blank']")

$('#organization').on('change', function (e) {
	initSelectControls(e);
});

function initSelectControls(e) {
	var control;
	var org_id = e.target.value;

	$.get('/org-users?org_id=' + org_id, function (data) {

		initAvailItems(data);

		$.each(selectControls, function (index, controlId) {
			control = $('#' + controlId.name);
			control.empty();
			control.append('<option value="0">[Select]</option>');
			availItems.forEach(function(user){
				control.append('<option value="' + user.id + '">' + user.name + '</option>');
			});
		});
	});

}

function updateAvailItems(data) {
	if (availItems.length === 0) {
		initAvailItems(data);
	}
	else {

	}

}

function initAvailItems(data) {
	// Ensure that availItems is empty
	var newItem;
	for (var i = 0; i < data.length; i++) {
		newItem = {
			id: data[i].id, 
			name: data[i].last_name + ', ' + data[i].first_name
		};
		availItems.push(newItem);
	}
}

	