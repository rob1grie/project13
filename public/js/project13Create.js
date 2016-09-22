
/*
 * availUsers:	Stores all Users for the Organization that haven't been selected
 *		fields:	id			The id field from the database
 *				name		Concatenation of last_name, first_name from database
 */
var availUsers = [];

/*
 * usedUsers:	Stores Users for the Organization that have been selected
 *		fields:	selectId	The id (and name) of the select control that has this User selected
 *				userId		The id of the User from the database
 */
var usedUsers = [];

// jQuery generated array of all select controls that don't include organization
var selectControls = $("select[id!='organization']");

// onChange handler for the organization select control
$('#organization').on('change', function (e) {
// When organization changes, need to initialize the user selects
	initSelectControls(e);
});

// onChange handler for all select controls except organization
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
//	console.log('Name:' + e.target.name);
//	console.log('Value: ' + e.target.value);
	// Check whether the select control is already in usedUsers
	if (!selectIsUsed(e)) {
		// Save selected user to usedUsers
		usedUsers.push({
			selectId:	e.target.name,
			userId:		e.target.value
		});
		// Remove selected user from availUsers
		
	}
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
		newUser = {
			id: data[i].id,
			name: data[i].last_name + ', ' + data[i].first_name
		};
		availUsers.push(newUser);
	}
}

function selectIsUsed(data) {
	// Returns true if data.id is found in usedUsers
	usedUsers.forEach(function(item, index, array) {
		
	});
}
	