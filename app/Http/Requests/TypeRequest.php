<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TypeRequest extends FormRequest
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
        if ($this->method() == 'PATCH'){

            $id = $this->get('_id');
            return [
                'slug'  => 'required|unique:types,slug,'.$id.',id',
                'name'  => 'required',
                'name_en'  => 'required',
            ];
        }else{
            return [
                'slug'  => 'required|unique:types',
                'name'  => 'required',
                'name_en'  => 'required',
            ];
        }
    }

    public function messages()
    {
        return [
            'slug.required' => 'Đường dẫn không được để trống.',
            'slug.unique' => 'Đường dẫn không được trùng.',
            'name.required' => 'Tiêu đề tiếng việt không được để trống.',
            'name_en.required' => 'Tieu đề tiếng anh không được để trống.',
        ];
    }
}
