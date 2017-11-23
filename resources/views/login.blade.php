
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>CSU</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Minimal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="minimal/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="minimal/css/style.css" rel='stylesheet' type='text/css' />
<link href="minimal/css/font-awesome.css" rel="stylesheet"> 
<script src="minimal/js/jquery.min.js"> </script>
<script src="minimal/js/bootstrap.min.js"> </script>
</head>
<body>
	<div class="login">
		<h1><a href="#">Cagayan State University </a></h1>
		<div class="login-bottom">

			<h2>Login</h2>
			<form action="{{ route('login') }}" method="POST">
			{!! csrf_field() !!}
			<div class="col-md-12">
				<div class="login-mail">
					<input type="text" placeholder="Email" name="username" required="">
					<i class="fa fa-envelope"></i>
				</div>
				<div class="login-mail">
					<input type="password" placeholder="Password" name="password" required="">
					<i class="fa fa-lock"></i>
				</div>
				
					  	<div class="col-md-12 login-do center-block" >
				<label class="hvr-shutter-in-horizontal login-sub">
					<input type="submit" value="login">
					</label>
				
			</div>
			
			</div>
		
			
			<div class="clearfix"> </div>
			</form>
		</div>
	</div>
		<!---->
<div class="copy-right">
            <p> &copy; 2017. All Rights Reserved  </p>	    </div>  
<!---->
<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
</body>
</html>

