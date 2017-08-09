<?php

namespace App\Http\Requests\Frontend;

use App\Http\Requests\Frontend\Request as FrontendRequest;
use Illuminate\Validation\Rule;

class UpdateUserRequest extends FrontendRequest
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
            'email' => ['required', 'max:255', 'email', Rule::unique('users')->ignore($this->user->id)],
            'password' => 'nullable|min:3|max:16'
        ];
    }
}
