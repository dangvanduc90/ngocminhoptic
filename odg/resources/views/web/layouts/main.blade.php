
<!DOCTYPE html>
<html>
@include('web.partials.head')
@yield('css')

<body>
	<div class="form-s-overlay"></div>
	@include('web.partials.header')
	@include('web.partials.menu-mobile')
	@yield('content')
	@include('web.partials.footer')
</body>
@include('web.partials.js')
@yield('js')
</html>