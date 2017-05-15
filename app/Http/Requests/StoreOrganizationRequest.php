<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class StoreOrganizationRequest extends Request
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
			'name' => 'required',
			'address1' => 'required',
			'city' => 'required',
			'state' => 'required',
			'zipcode' => 'required',
        ];
    }
}
