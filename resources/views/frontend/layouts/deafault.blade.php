<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>@yield('title')</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	@include('frontend.partials.css')
	@yield('css')
</head>

<body id="mainContentBoby">
	@include('frontend.partials.header')
	@yield('content')
	@include('frontend.partials.footer')
</body>
@include('frontend.partials.js')
@yield('js')
</html>