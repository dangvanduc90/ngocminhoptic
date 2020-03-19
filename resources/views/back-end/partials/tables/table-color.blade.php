<table class="table table-striped table-bordered table-hover dataTables-example">
	<thead>
		<tr>
			<th class="no-sort check-all-table text-center"><input type="checkbox" id="master"></th>
			<th class="text-center">Mã sản phẩm</th>
			<th class="text-center">Sản phẩm</th>
			<th class="text-center">Màu</th>
			<th class="text-center">Ảnh màu</th>
			<th class="text-center">Mã màu</th>
			<th class="text-center">Ảnh đại diẹne</th>
			<th class="text-center">Màu mặc định</th>
			<th class="text-center">Trạng Thái</th>
			<th class="text-center">Action</th>
		</tr>
	</thead>
	<tbody>
		@foreach($data as $obj)
		<tr>
			<td class="text-center"><input type="checkbox" class="sub_chk" data-id="{{$obj->id}}"></td>
			<td class="text-center">{{$obj->product != null ? $obj->product->sku : ''}}</td>
			<td class="text-center">{{$obj->product != null ? $obj->product->name : ''}}</td>
			<td class="text-center">{{$obj->name}}</td>
			<td class="text-center"><img src="{{$obj->image_color}}" style="max-width: 200px;"></td>
			<td class="text-center">{{ $obj->code_color }}</td>
			<td class="text-center"><img src="{{$obj->image_product}}" style="max-width: 200px;"></td>
			<td class="text-center">{{ $obj->is_default == 1 ? 'Đúng' : 'Sai' }}</td>
			<td class="text-center">
				@if ($obj->status == 1)
				<span class="label label-success">Đang sử dụng</span></a>
				@else
				<span class="label label-danger">Ngừng sử dụng</span></a>
				@endif
			</td>
			<td class="text-center">
				<a href="{{route('color.edit', ['id'=>$obj->id])}}" class="btn btn-warning btn-circle"><i class="fa fa-edit"></i></a>
				<a 	class="btn btn-danger btn-circle btn-sm delete-button" 
					data-action ="{{ route('color.destroy',$obj->id) }}" type="button">
					<i class="fa fa-trash"></i>
				</a>
			</td>
		</tr>
		@endforeach
	</tbody>
</table>