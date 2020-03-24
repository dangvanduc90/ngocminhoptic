<?php


namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;

class SanPhamExport implements FromArray, WithHeadings
{
    protected $sanphams;

    public function __construct(array $sanphams)
    {
        $this->sanphams = $sanphams;
    }
    public function array(): array
    {
        return $this->sanphams;
    }

    public function headings(): array
    {
        return [
            'STT',
//            'Ma_SP',
            'SanPham',
            'MauSac',
            'SL',
            'DG',
            'GhiChu',
        ];
    }
}
