var availItems = [];
var usedItems = [];
var selectControls = $('select');

$('#organization').on('change', function (e) {
	fillSelectControls(e);
});

function fillSelectControls(e) {
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

	