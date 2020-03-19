@foreach($orders as $order)
<tr class="btn-reveal-trigger">
	<td class="align-middle">{{$order->ngay}}</td>
	<td class="align-middle">{{$order->gio}}</td>
	<td class="align-middle">{{$order->name}}</td>
	<td class="align-middle">{{$order->address}}</td>
	<td class="align-middle">{{$order->email}}</td>
	<td class="align-middle">{{$order->phone}}</td>
	<td class="align-middle">{{$order->coso}}</td>
	<td class="align-middle">{{$order->content}}</td>
</tr>
@endforeach