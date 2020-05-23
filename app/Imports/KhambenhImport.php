<?php


namespace App\Imports;


use App\Admin\Khambenh;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithBatchInserts;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;
use Illuminate\Validation\Rule;

class KhambenhImport implements ToModel, WithHeadingRow, WithBatchInserts, WithValidation
{
    /**
     * @param array $row
     *
     * @return Khambenh|null
     */
    public function model(array $row)
    {
        return new Khambenh([
            'masp'     => $row['masanpham'],
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
                $record = Khambenh::where('masp', $value)->first();
                if ($record) {
                    $record->delete();
                }
            }
        ];
    }
}
