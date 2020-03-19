@if(isset($data))
@php
$i = 1;
@endphp

@foreach($data as $tmp)
<tr class="btn-reveal-trigger">
	<td class="align-middle"><span>{{$i}}</span></td>
	<td class="align-middle">{{$tmp->hovaten}}</td>
	<td class="align-middle">{{$tmp->madon}}</td>
	<td class="align-middle">{{$tmp->ngaykham}}</td>
	<td class="align-middle">{{$tmp->sdt}}</td>
	<td class="align-middle">{{$tmp->pd}}</td>
	<td class="align-middle">
		<a style="cursor: pointer" class="view_benhan" data-id="{{$tmp->id}}" >
			<i class="fa fa-eye" aria-hidden="true"></i>
		</a>
	</td>
</tr>
@php
$i++;
@endphp
@endforeach
@endif