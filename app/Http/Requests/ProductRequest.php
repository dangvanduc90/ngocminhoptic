<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
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
                'sku'  => 'required|unique:products,sku,'.$id.',id',
                'slug'  => 'required|unique:products,slug,'.$id.',id',
                'name'  => 'required',
                'price'  => 'required',
            ];
        }else{
            return [
                'sku'  => 'required|unique:products',
                'slug'  => 'required|unique:products',
                'name'  => 'required',
                'price'  => 'required',
            ];
        }
    }

    public function messages()
    {
        return [
            'sku.required' => 'Mã sản phẩm không được để trống.',
            'sku.unique' => 'Mã sản phẩm không được trùng.',
            'slug.unique' => 'Đường dẫn tĩnh không được trùng.',
            'name.required' => 'Tên không được để trống.',
            'price.required' => 'Giá không được để trống.',
        ];
    }
}
