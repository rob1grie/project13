<?php
// TODO How to scope this statement?
// At line 9 App\User isn't found
use App\User;

header('Content-Type: text/json');

$orgID = $_GET['orgID'];

$users = User::select(DB::raw('concat(last_name, \', \', first_name) as name, id'))
		->where('organization_id', '=', $orgID)
		->where('project13_id', '=', NULL)
		->orderBy('name', 'asc')
		->get();

echo json_encode($users);
