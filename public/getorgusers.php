<?php

use App\Member;

header('Content-Type: text/json');

$orgID = $_GET['orgID'];

$members = Member::select(DB::raw('concat(last_name, \', \', first_name) as name, id'))
		->where('organization_id', '=', $orgID)
		->where('project13_id', '=', NULL)
		->orderBy('name', 'asc')
		->get();

echo json_encode($members);
