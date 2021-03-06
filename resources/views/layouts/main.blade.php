<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Project13Men.org - @yield('title')</title>

		<!-- Bootstrap core CSS -->
		<link href="/css/bootstrap.min.css" rel="stylesheet">

		<!-- Custom styles for this template -->
		<link href="/css/style.css" rel="stylesheet">
		
	</head>

	<body onload="process()">

		@include('layouts.navbar');

		<div class="container">
			<div class="row">
				<div class="col-md-3">
					@yield('sidebar')
				</div>
				<div class="col-md-9">
					@if(Session::has('message'))
					<div class="alert alert-info">
						{{ Session::get('message') }}
					</div>
					@endif
					
					@foreach($errors->all() as $error)
					<p class="error">{{ $error }}</p>
					@endforeach

					@yield('content')
				</div>
			</div>

		</div><!-- /.container -->
		<script src="/js/jquery-3.1.0.min.js" type="text/javascript"></script>
		<script src="/js/bootstrap.min.js" type="text/javascript"></script>
		<!--  Custom javascript -->
		@yield('script')
		
	</body>
</html>
