<table class="table table-striped table-bordered table-hover dataTables-example">
	<thead>
		<tr>
			<th class="text-center">Ngày tạo</th>
			<th class="text-center">Mã đơn hàng</th>
			<th class="text-center">Tên khách hàng</th>
			<th class="text-center">Số điện thoại</th>
			<th class="text-center">Địa chỉ</th>
			<th class="text-center">Số tiền</th>
		</tr>
	</thead>
	<tbody>
		@php
		$sum = 0;
		@endphp
		@foreach($data['donhang_1'] as $donhang)
		<tr>
			<td class="text-center">{{date_format($donhang->created_at,"d/m/Y")}}</td>
			<td class="text-center">#{{$donhang->id}}</td>
			<td class="text-center">{{$donhang->name}}</td>
			<td class="text-center">{{$donhang->phone}}</td>
			<td class="text-center">{{$donhang->address}}</td>
			<td class="text-center">{{number_format($donhang->sum())}}</td>
		</tr>
		@php
		$sum += $donhang->sum();
		@endphp
		@endforeach
		<tr>
			<td class="text-center">{{$end_date}}</td>
			<td class="text-center"></td>
			<td class="text-center"></td>
			<td class="text-center"></td>
			<td class="text-center"><b>TỔNG CỘNG</b></td>
			<td class="text-center" style="color:red">{{number_format($sum)}}</td>
		</tr>
	</tbody>
</table>