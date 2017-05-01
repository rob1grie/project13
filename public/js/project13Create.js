/*
 * availUsers:	Stores all Users for the Organization that haven't been selected
 *		fields:	id			The id field from the database
 *				name		Concatenation of last_name, first_name from database
 */
var availUsers = [];

/*
 * usedUsers:	Stores Users for the Organization that have been selected
 *		fields:	selectName	The id (and name) of the select control that has this User selected
 *				user		The User object contained in this item
 *					id		The id of the User from the database
 *					name	The name of the User, as last_name, first_name
 */
var usedUsers = [];

/*
 * onClick handler for all the reset buttons next to the select controls
 */
var resetButtons = $("button[id$='reset']");
resetButtons.on('click', function (e) {
	resetSelect(e.target);
});

/*
 * jQuery generated array of all select controls that don't include organization
 */
var selectControls = $("select[id!='organization']");
selectControls.addClass("select-width-100");


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
 * isOrgP13 flags that the controls are on an Organization's Create Project 13 form
 */
function initSelectControls(orgId, isOrgP13 = false) {
	var control;
	var getRoute = isOrgP13 ? '/org-users-no-p13?org_id=' : '/org-users?org_id=';
	$.get(getRoute + orgId, function (data) {
		// Initialize availUsers array
		initAvailUsers(data);
		// Initialize usedUsers array
		usedUsers = [];
		$.each(selectControls, function (index, controlId) {
			control = $('#' + controlId.name);

			control.empty();
			control.append('<option value="0">[Select]</option>');
			availUsers.forEach(function (user) {
				var option = '<option value=' + user.id + '>' + user.name + '</option>';
				control.append(option);
			});
		});
	});
}

/*
 *  Initialize the select controls for an Organization's create-p13 form
 *  Receives parameter 'data' which is JSON data of all Users for the Organization
 */
function initOrgSelectControls(data) {
}


/*
 * Update select controls, as when a selection changes and all others must be updated
 */
function updateSelectControls(select) {
	// First update availUsers and usedUsers
	updateCollections(select);

	loadUserSelects();

	setSelectedUsers();
}

/*
 * Update availUsers and usedUsers, to be used when updating the select controls
 */
function updateCollections(select) {
	var user;
	// First check whether selection was changed to '[Select]'
	if (parseInt(select.value) === 0) {
		// Restore the User referenced by 'select' to availUsers
		user = removeUsedUser(select.name);
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
		user = removeUsedUser(select.name);
		addAvailUser(user);
		addUsedUser(select);
	}
}


/*
 * Load each User select control, including the select control's selected User
 * A selected User won't be included in other select controls until that select control is changed to '[Select]'
 */
function loadUserSelects() {
	// Step through each select control
	var selectArray = [];
	var controlText = '';

	$.each(selectControls, function (index, selectControl) {
		var sc = "#" + selectControl.name;
		$(sc).empty();

		selectArray = buildSelectArray(selectControl.name);

		$(sc).append('<option value="0">[Select]</option>');

		selectArray.forEach(function (user) {
			var controlText = '<option value="' + user.id + '">' + user.name + "</option>'";
			$(sc).append(controlText);
		});

		var user = getSelectUser(selectControl.name);
		if (!user) {
			$(sc).val(0);
		}
		else {
			$(sc).val(user.id);
		}
		
	});
}


/*
 * Build an array of Users based on availUsers and usedUsers, 
 * including the usedUser for the current select control
 */
function buildSelectArray(selectName) {
	var usedUser;
	var selectArray = [];

	if (selectIsUsed(selectName)) {
		usedUser = getSelectUser(selectName);
		// Initialize selectArray with the User referenced by the select control
		selectArray.push({
			id: usedUser.id,
			name: usedUser.name
		});
	}


	// Add all availUsers to selectArray
	availUsers.forEach(function (user) {
		selectArray.push({
			id: user.id,
			name: user.name
		});
	});

	// Sort the items in selectArray by the user.name
	selectArray.sort(compareUsers);

	return selectArray;
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
	availUsers.push({
		id:		user.id,
		name:	user.name
	});
}

/*
 * Remove the User referenced by 'id' from availUsers and re-sort
 */
function removeAvailUser(id) {
	var removedUser;
	var user;

	for (var i = 0; i < availUsers.length; i++) {
		user = availUsers[i];
		if (user.id === id) {
			var pos = availUsers.indexOf(user);
			removedUser = availUsers.splice(pos, 1)[0];
			break;
		}
	}

	sortAvailUsers();

	return removedUser;
}

function sortAvailUsers() {
	availUsers.sort(compareUsers);
}


/*
 * Compare function used to sort Users
 */
function compareUsers(a, b) {
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
	var result = false;

	for(var i=0; i<usedUsers.length; i++) {
		var usedUser = usedUsers[i];
		if (usedUser.selectName === selectName) {
			result = true;
			break;
		}
	}
	
	return result;
}

/*
 * Initialize usedUsers to an empty array
 */
function initUsedUsers() {
	usedUsers = [];
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
			removedUser = usedUsers.splice(i, 1)[0].usedUser;
			break;
		}
	}

	return removedUser;
}


/*
 * Get the User referenced in the select control with 'selectName'
 */
function getSelectUser(selectName) {
	var usedUser;

	for (var i = 0; i < usedUsers.length; i++) {
		if (usedUsers[i].selectName === selectName) {
			usedUser = usedUsers[i].usedUser;
			break;
		}
	}

	return usedUser;
}

/*
 * Set the selected User with the ID of id
 */
function setSelectedUsers() {
	usedUsers.forEach(function(usedUser) {
		var user = usedUser.usedUser;
		var selectName = usedUser.selectName;
		$('#' + selectName).val(user.id);
	});
}


/*
 * Set text in testDiv
 */
function setTestDiv(text) {
	testDiv = $('#test');
	testDiv.empty();
	testDiv.append(text);

}

/*
 * Get the select control's id referenced by the reset button
 */
function getResetSelectId(btn) {
	var name = btn.id;
	var i = name.indexOf('reset');
	var selectName = name.substring(0, i-1);
	
	return selectName;
}

/*
 * Reset the associated select control to value of 0
 */
function resetSelect(btn) {
	var selectName = getResetSelectId(btn);
	
	var removedUser = removeUsedUser(selectName);
	addAvailUser(removedUser);
	
	$("#" + selectName).val(0);
	
	loadUserSelects();
	
	return selectName;
}