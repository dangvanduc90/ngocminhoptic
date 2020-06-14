<table class="table table-striped table-bordered table-hover dataTables-example">
	<thead>
		<tr>
			<th class="text-center">Mã đơn hàng</th>
			<th class="text-center">Tên liên hệ</th>
			<th class="text-center">Số điện thoại</th>
			<th class="text-center">Email</th>
			<th class="text-center">Địa chỉ</th>
			<th class="text-center">Nội dung</th>
			<th class="text-center">Số tiền</th>
			<th class="text-center">Số tài khoản</th>
			<th class="text-center">Ngân hàng</th>
			<th class="text-center">Ngày tạo</th>
			<th class="text-center">Trạng thái</th>
            <th class="text-center">Action</th>
        </tr>
	</thead>
	<tbody>
		@foreach($donhangs as $obj)
		<tr>
			<td class="text-center">#{{$obj->id}}</td>
			<td class="text-center">{{$obj->name}}</td>
			<td class="text-center">{{$obj->phone}}</td>
			<td class="text-center">{{$obj->email}}</td>
			<td class="text-center">{{$obj->address}}</td>
			<td class="text-center">{{$obj->content}}</td>
			<td class="text-center">{{number_format($obj->sum())}}</td>
			<td class="text-center">{{$obj->stk}}</td>
			<td class="text-center">{{$obj->bank->name}}</td>
			<td class="text-center">{{$obj->created_at}}</td>
			<td class="text-center">{{$obj->status == 0 ? 'Đang chờ' : 'Đã xử lý'}}</td>
            <td class="text-center">
                <a 	class="btn btn-danger btn-circle btn-sm delete-button"
                      data-action ="{{ route('donhang.destroy',$obj->id) }}" type="button">
                    <i class="fa fa-trash"></i>
                </a>
            </td>
		</tr>
		@endforeach
	</tbody>
</table>
