@foreach($orders as $order)
<tr class="btn-reveal-trigger" id="order_{{ $order->id }}">
	<td class="align-middle">{{$order->ngay}}</td>
	<td class="align-middle">{{$order->gio}}</td>
	<td class="align-middle">{{$order->name}}</td>
	<td class="align-middle">{{$order->address}}</td>
	<td class="align-middle">{{$order->email}}</td>
	<td class="align-middle">{{$order->phone}}</td>
	<td class="align-middle">{{$order->coso}}</td>
	<td class="align-middle">{{$order->content}}</td>
	<td class="align-middle">
        <button type="button" class="btn btn-danger btn" onclick="return confirmFormDelete({{$order->id}});">Xóa</button>
    </td>
</tr>
@endforeach
