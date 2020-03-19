<table class="table table-striped table-bordered table-hover dataTables-example">
	<thead>
		<tr>
			<th class="text-center">ID</th>
			<th class="text-center">Email</th>
		</tr>
	</thead>
	<tbody>
		@foreach($contacts as $obj)
		<tr>
			<td class="text-center">#{{$obj->id}}</td>
			<td class="text-center">{{$obj->email}}</td>
		</tr>
		@endforeach
	</tbody>
</table>