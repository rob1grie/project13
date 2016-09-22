
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
 *				userName	The name of the User, saved to ease adding back to availUsers if necessary
 */
var usedUsers = [];


/*
 * jQuery generated array of all select controls that don't include organization
 */
var selectControls = $("select[id!='organization']");


/*
 * onChange handler for the organization select control
 */
$('#organization').on('change', function (e) {
// When organization changes, need to initialize the user selects
	initSelectControls(parseInt(e.target.value));
});


/*
 *  onChange handler for all select controls except organization
 */
$("select[id!='organization']").on('change', function (e) {
// When any of the user selects changes, need to update availUsers and usedUsers
	updateSelectControls(e.target);
});


/*
 * Initialize the select controls, as when a different organization is selected
 */
function initSelectControls(orgId) {
	var control;
	$.get('/org-users?org_id=' + orgId, function (data) {
		// Initialize availUsers array
		initAvailUsers(data);
		$.each(selectControls, function (index, controlId) {
			control = $('#' + controlId.name);
			control.empty();
			control.append('<option value="0">[Select]</option>');
			availUsers.forEach(function (user) {
				control.append('<option value=' + user.id + '>' + user.name + '</option>');
			});
		});
	});
}


/*
 * Update select controls, as when a selection changes and all others must be updated
 */
function updateSelectControls(select) {
	// First update availUsers and usedUsers
	updateCollections(select);

	
}

/*
 * Update availUsers and usedUsers, to be used when updating the select controls
 */
function updateCollections(select) {
	var user;
	// First check whether selection was changed to '[Select]'
	if (parseInt(select.value) === 0) {
		// Restore the User referenced by 'select' to availUsers
		user = restoreUsedUser(select.name).user;
		addAvailUser(user);
	}
	// Check whether the select control is already in usedUsers
	else if (!selectIsUsed(select.name)) {
		// Move the User from availUsers to UsedUsers
		addUsedUser(select);
	}
	// Otherwise this select control's value was just change
	// Remove the existing User from usedUsers, restore it to availUsers, then add the selected User to usedUsers
	else {
		user = restoreUsedUser(select.name);
		addAvailUser(user);
		addUsedUser(select);
	}
}

/*
 * Update availUsers, removing or adding when one is selected in a select control
 */
function updateAvailUsers(data) {
	if (availUsers.length === 0) {
		initAvailUsers(data);
	}
	else {

	}

}

/*
 * Initialize availUsers, as when the organization changes
 */
function initAvailUsers(data) {
// Ensure that availItems is empty
	availUsers = [];
	for (var i = 0; i < data.length; i++) {
		availUsers.push({
			id: data[i].id,
			name: data[i].last_name + ', ' + data[i].first_name
		});
	}
}

/*
 * Add the User referenced in 'data' to availUsers and re-sort
 */
function addAvailUser(user) {

}

/*
 * Remove the User referenced by 'id' from availUsers and re-sort
 */
function removeAvailUser(id) {
	var removedUser;
	// TODO change this to a for loop to enable a break
	availUsers.forEach(function (user) {
		if (user.id === id) {
			var pos = availUsers.indexOf(user);
			removedUser = availUsers.splice(pos, 1);
			
		}
	});

	sortAvailUsers();

	return removedUser;
}

function sortAvailUsers() {
	availUsers.sort(compareAvailUsers);
}


/*
 * Compare function used by sortAvailUsers
 */
function compareAvailUsers(a, b) {
	if (a.name < b.name) {
		return -1;
	}
	if (a.name > b.name) {
		return 1;
	}
	return 0;
}

/*
 * Get the name from availUsers using the User ID
 */
function getAvailUserName(userId) {
	availUsers.forEach(function (user) {
		if (user.id === userId) {
			return user.name;
		}
	});
	return '';
}

/*
 * Determine whether the select control referenced by 'data' is in usedUsers
 */
function selectIsUsed(selectName) {
	// Returns true if select control's name is found in usedUsers

	usedUsers.forEach(function (usedUser) {
		if (usedUser.selectName === selectName) {
			return true;
		}
	});
	return false;
}


/*
 * Remove the selected User from availUsers and add to UsedUsers
 */
function addUsedUser(select) {
	// Remove selected user from availUsers ...
	// select.value is id of User
	var user = removeAvailUser(parseInt(select.value));

	// ... and save selected user to usedUsers ...
	usedUsers.push({
		selectName: select.name,
		usedUser: user
	});

}


/*
 * Remove selected User from usedUsers and return the User
 */
function removeUsedUser(selectName) {
	var removedUser;
	for (var i = 0; i < usedUsers.length; i++) {
		if (usedUsers[i].selectName === selectName) {
			removedUser = usedUsers.splice(i, 1);
		}
	}

	return removedUser;
}


/*
 * Removes the User referenced by 'select' and restores it to availUsers
 */
function restoreUsedUser(selectName) {
	user = removeUsedUser(selectName);
	
	return user;
}