<?php


namespace App\Imports;


use App\Admin\Product;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithBatchInserts;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;
use Illuminate\Validation\Rule;

class ProductImport implements ToModel, WithHeadingRow, WithBatchInserts, WithValidation
{
    /**
     * @param array $row
     *
     * @return Product|null
     */
    public function model(array $row)
    {
        return new Product([
            'sku'     => $row['masanpham'],
            'slug'     => Str::slug($row['masanpham']),
            'name'    => $row['tensanpham'],
            'price'    => floatval(str_replace([',', '\''], '', $row['gia'])),
            'status'    => $row['trangthai'] == 'Đang sử dụng' ? 1 : 0,
        ]);
    }

    public function headingRow(): int
    {
        return 1;
    }

    public function batchSize(): int
    {
        return 1000;
    }

    public function rules(): array
    {
        return [
            '*.masanpham' => function($attribute, $value, $onFailure) {
                $record = Product::where('sku', $value)->first();
                if ($record) {
                    $record->delete();
                }
            }
        ];
    }
}
