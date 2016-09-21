
var availUsers = new Map();
var usedUsers = [];
var selectControls = $("select[id!='organization']");
$('#organization').on('change', function (e) {
// When organization changes, need to initialize the user selects
	initSelectControls(e);
});
$("select[id!='organization']").on('change', function (e) {
// When any of the user selects changes, need to update availUsers and usedUsers
	updateSelectControls(e);
});
function initSelectControls(e) {
	var control;
	var org_id = e.target.value;
	$.get('/org-users?org_id=' + org_id, function (data) {
		// Initialize availUsers array
		initAvailUsers(data);
		$.each(selectControls, function (index, controlId) {
			control = $('#' + controlId.name);
			control.empty();
			control.append('<option value="0">[Select]</option>');
			availUsers.forEach(function (user) {
				control.append('<option value="' + user.id + '">' + user.name + '</option>');
			});
		});
	});
}

function updateSelectControls(e) {
	console.log('Name:' + e.target.name);
	console.log('Value: ' + e.target.value);
}

function updateAvailUsers(data) {
	if (availUsers.length === 0) {
		initAvailUsers(data);
	}
	else {

	}

}

function initAvailUsers(data) {
// Ensure that availItems is empty
	var newUser;
	for (var i = 0; i < data.length; i++) {
		availUsers.set(data[i].id, data[i].last_name + ', ' + data[i].first_name);
	}
	availUsers.forEach(function (value, key) {
		console.log(key + " = " + value);
	}, availUsers);
}

	