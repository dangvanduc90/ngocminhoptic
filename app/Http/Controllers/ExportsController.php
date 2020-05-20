<?php

namespace App\Http\Controllers;

use App\Admin\Benhan;
use App\Exports\BenhAnExport;
use App\Exports\LichHenExport;
use App\Exports\SanPhamExport;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class ExportsController extends Controller
{
    public function exportTatCaBenhAn(Request $request)
    {
        $benhans = Benhan::select(['madon', 'ngayhen', 'hovaten', 'sdt', 'pd', 'mp_ts_moi', 'mt_ts_moi', 'tongthanhtien', 'congno'])->get()->toArray();
        return Excel::download(new BenhAnExport($benhans), 'tat_ca_benh_an.xlsx');
    }

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
