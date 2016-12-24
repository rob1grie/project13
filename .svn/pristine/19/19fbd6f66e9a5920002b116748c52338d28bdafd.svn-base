<?php

use App\User;

header('Content-Type: text/json');

$users = User::select(DB::raw('concat(last_name, \', \', first_name) as name, id'))
		->where('project13_id', '=', NULL)
		->orderBy('name', 'asc')
		->get();

echo json_encode($users);
