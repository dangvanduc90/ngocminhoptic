<?php


namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithColumnFormatting;
use Maatwebsite\Excel\Concerns\WithHeadings;
use PhpOffice\PhpSpreadsheet\Cell\Cell;
use Maatwebsite\Excel\Concerns\WithCustomValueBinder;
use PhpOffice\PhpSpreadsheet\Cell\DefaultValueBinder;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;
use PhpOffice\PhpSpreadsheet\Cell\DataType;

class BenhAnExport extends DefaultValueBinder implements FromArray, WithHeadings, WithColumnFormatting, ShouldAutoSize, WithCustomValueBinder {
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
            'Tổng thành tiền',
            'Công nợ',
        ];
    }

    public function columnFormats(): array
    {
        return [
            'H' => NumberFormat::FORMAT_NUMBER,
            'I' => NumberFormat::FORMAT_NUMBER,
        ];
    }
    public function bindValue(Cell $cell, $value)
    {
//        if (is_numeric($value)) {
//            $cell->setValueExplicit($value, DataType::TYPE_NUMERIC);
//
//            return true;
//        }

        // else return default behavior
        return parent::bindValue($cell, $value);
    }
}
