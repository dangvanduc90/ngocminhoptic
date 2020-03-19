@foreach($benhans as $benhan)
<tr style="cursor: pointer;" class="btn-reveal-trigger benhan_data" data-id="{{$benhan->id}}">
	<td class="align-middle">{{$benhan->madon}}</td>
	<td class="align-middle">{{$benhan->ngaykham}}</td>
	<td class="align-middle">{{$benhan->hovaten}}</td>
	<td class="align-middle">{{$benhan->sdt}}</td>
	<td class="align-middle">{{$benhan->pd}}</td>
	<td class="align-middle">{{$benhan->mp_ts_moi}}</td>
	<td class="align-middle">{{$benhan->mt_ts_moi}}</td>
</tr>
@endforeach