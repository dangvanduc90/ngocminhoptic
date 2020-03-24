<?php


namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;

class LichHenExport implements FromArray, WithHeadings
{
    protected $benhans;

    public function __construct(array $lichhens)
    {
        $this->benhans = $lichhens;
    }
    public function array(): array
    {
        return $this->benhans;
    }

    public function headings(): array
    {
        return [
            'Ngày',
            'Giờ',
            'Họ và tên',
            'Địa chỉ',
            'Email',
            'Cơ sở',
            'Số điện thoại',
            'Nội dung',
        ];
    }
}
