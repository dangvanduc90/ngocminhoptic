<table class="table table-striped table-bordered table-hover dataTables-example">
	<thead>
		<tr>
			<th class="text-center">Tên liên hệ</th>
			<th class="text-center">Số điện thoại</th>
			<th class="text-center">Email</th>
			<th class="text-center">Địa chỉ</th>
			<th class="text-center">Nội dung</th>
		</tr>
	</thead>
	<tbody>
		@foreach($lienhes as $obj)
		<tr>
			<td class="text-center">{{$obj->name}}</td>
			<td class="text-center">{{$obj->phone}}</td>
			<td class="text-center">{{$obj->email}}</td>
			<td class="text-center">{{$obj->address}}</td>
			<td class="text-center">{{$obj->content}}</td>
		</tr>
		@endforeach
	</tbody>
</table>