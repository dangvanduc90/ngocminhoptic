<?php

namespace App\Http\Controllers;

use App\Exports\BenhAnExport;
use App\Exports\LichHenExport;
use App\Exports\SanPhamExport;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class ExportsController extends Controller
{
    public function exportBenhAn(Request $request)
    {
        $benhans = $request->input('benhans');
        return Excel::download(new BenhAnExport($benhans), 'benh_an.xlsx');
    }

    public function exportLichHen(Request $request)
    {
        $lichhens = $request->input('lichhens');
        return Excel::download(new LichHenExport($lichhens), 'lich_hen.xlsx');
    }

    public function exportSanPham(Request $request)
    {
        $lichhens = $request->input('sanphams');
        return Excel::download(new SanPhamExport($lichhens), 'san_pham.xlsx');
    }
}
