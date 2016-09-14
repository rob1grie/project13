var availItems = [];
var usedItems = [];
var selectControls = ['white_hat',
	'blue_hat_1', 'yellow_hat_1-1', 'yellow_hat_1-2', 'yellow_hat_1-3',
	'blue_hat_2', 'yellow_hat_2-1', 'yellow_hat_2-2', 'yellow_hat_2-3',
	'blue_hat_3', 'yellow_hat_3-1', 'yellow_hat_3-2', 'yellow_hat_3-3',
];

$('#organization').on('change', function(e) {
	fillSelectControls(e);
});

function fillSelectControls(e) {
	var control;
	var org_id = e.target.value;

	$.get('/org-users?org_id=' + org_id, function (data) {
		$.each(selectControls, function (index2, controlId) {
			control = $('#'+controlId);
			control.empty();
			control.append('<option value="0">[Select]</option>');
			$.each(data, function (index, user) {
				control.append('<option value="' + user.id + '">' + user.last_name + ', ' + user.first_name + '</option>');
			});
		});
	});

}

	