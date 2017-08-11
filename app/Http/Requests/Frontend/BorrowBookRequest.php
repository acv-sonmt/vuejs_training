<?php

namespace App\Http\Requests\Frontend;

use App\Http\Requests\Frontend\Request as FrontendRequest;

class BorrowBookRequest extends FrontendRequest
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
            'user_id' => 'required',
            'book_id' => 'required|max:3',
            'book_id.*' => 'exists:books,id'
        ];
    }
}
