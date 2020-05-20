<table class="table table-striped table-bordered table-hover dataTables-example">
	<thead>
		<tr>
			<th class="text-center">ID</th>
			<th class="text-center">Email</th>
            <th class="text-center">Action</th>
        </tr>
	</thead>
	<tbody>
		@foreach($contacts as $obj)
		<tr>
			<td class="text-center">#{{$obj->id}}</td>
			<td class="text-center">{{$obj->email}}</td>
            <td class="text-center">
                <a 	class="btn btn-danger btn-circle btn-sm delete-button"
                      data-action ="{{ route('contact.destroy',$obj->id) }}" type="button">
                    <i class="fa fa-trash"></i>
                </a>
            </td>
		</tr>
		@endforeach
	</tbody>
</table>
