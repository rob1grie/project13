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
		$.each(selectControls, function (index, controlId) {
			if (controlId.name !== 'organization') {
				control = $('#' + controlId.name);
				control.empty();
				control.append('<option value="0">[Select]</option>');
				$.each(data, function (index, user) {
					control.append('<option value="' + user.id + '">' + user.last_name + ', ' + user.first_name + '</option>');
				});
			}
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
	availItems = new Array();
	
	for (var i = 0; i< data.length; i++) {
		availItems.push([data[i].id, data[i].name]);
	}
}

	