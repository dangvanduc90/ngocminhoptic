<?php


namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;

class BenhAnExport implements FromArray, WithHeadings
{
    protected $benhans;

    public function __construct(array $benhans)
    {
        $this->benhans = $benhans;
    }
    public function array(): array
    {
        return $this->benhans;
    }

    public function headings(): array
    {
        return [
            'Mã đơn hàng',
            'Ngày tháng',
            'Họ tên',
            'Số điện thoại',
            'PD',
            'Kính MP',
            'Kính MT',
        ];
    }
}
