<?php

namespace App\Http\Requests\Frontend;

use App\Http\Requests\Frontend\Request as FrontendRequest;

class BookRequest extends FrontendRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|max:255',
            'owner_id' => 'required',
            'image' => 'image'
        ];
    }
}
