<?php

namespace App\Http\Controllers\Admin;

use App\Admin\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OrderController extends Controller
{
    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return boolean
     */
    public function ajaxDestroyOrder($id)
    {
        return Order::destroy($id) > 0 ? 1 : 0;
    }
}
