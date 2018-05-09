<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Traveler</title>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="/Traveler/images/favicon.ico">

<!--<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>-->

<!-- Animate.css -->
<link rel="stylesheet" href="/Traveler/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/Traveler/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="/Traveler/css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="/Traveler/css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="/Traveler/css/magnific-popup.css">
<!-- Date Picker -->
<link rel="stylesheet" href="/Traveler/css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet" href="/Traveler/css/cs-select.css">
<link rel="stylesheet" href="/Traveler/css/cs-skin-border.css">

<link rel="stylesheet" href="/Traveler/css/style.css">


<!-- Modernizr JS -->
<script src="/Traveler/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="/Traveler/js/respond.min.js"></script>
	<![endif]-->


<!-- jQuery -->


<script src="/Traveler/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="/Traveler/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="/Traveler/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="/Traveler/js/jquery.waypoints.min.js"></script>
<script src="/Traveler/js/sticky.js"></script>

<!-- Stellar -->
<script src="/Traveler/js/jquery.stellar.min.js"></script>
<!-- Superfish -->
<script src="/Traveler/js/hoverIntent.js"></script>
<script src="/Traveler/js/superfish.js"></script>
<!-- Magnific Popup -->
<script src="/Traveler/js/jquery.magnific-popup.min.js"></script>
<script src="/Traveler/js/magnific-popup-options.js"></script>
<!-- Date Picker -->
<script src="/Traveler/js/bootstrap-datepicker.min.js"></script>
<!-- CS Select -->
<script src="/Traveler/js/classie.js"></script>
<script src="/Traveler/js/selectFx.js"></script>

<!-- Main JS -->
<script src="/Traveler/js/main.js"></script>


</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">

			<header id="fh5co-header-section" class="sticky-banner">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					<h1 id="fh5co-logo">
						<a href="/Traveler"><i class="icon-airplane"></i>Travel</a>
					</h1>
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
					<ul class="sf-menu" id="fh5co-primary-menu">
						<li class="active"><a href="/Traveler">Home</a></li>
						<li><a href="vacation.html" class="fh5co-sub-ddown">Vacations</a>
							<ul class="fh5co-sub-menu">
								<li><a href="#">Family</a></li>
								<li><a href="#">CSS3 &amp; HTML5</a></li>
								<li><a href="#">Angular JS</a></li>
								<li><a href="#">Node JS</a></li>
								<li><a href="#">Django &amp; Python</a></li>
							</ul></li>
						<li><a href="flight.html">航班</a></li>
						<li><a href="hotel.html">Hotel</a></li>
						<li><a href="car.html">Car</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
					</nav>
				</div>
			</div>
			</header>

			<!-- end:header-top -->

			<div class="text-center" style="width:50%;margin:10px auto;">
				<div class="row ">
					<div class="col-lg-12 text-center">
						<div class="table-responsive">
							<table class="table table-bordered table-condensed">
								<tr>
									<th class="text-center" colspan="2">訂單明細(訂單號碼:${orderList.orderID})</th>
								</tr>
								<tr class="success">
									<td>出發</td>
									<td>${orderList.depC}~ ${orderList.arrC}</td>
								</tr>
								<tr class="warning">
									<td>時間</td>
									<td>${orderList.depDate}</td>
								</tr>
								<tr class="danger">
									<td>回程</td>
									<td>${orderList.arrC}~ ${orderList.depC}</td>
								</tr>
								<tr class="active">
									<td>總價格</td>
									<td style="color:red">NT$10000</td>
								</tr>
									<tr class="active">
									<td>FK測試</td>
									<td >${guest.contactName}</td>
									<td >${guest.id}</td>
								</tr>
							</table>
							<button type="button" class="bnt">確定付款</button>
						</div>
					</div>
				</div>
			</div>




		</div>
	</div>

	<div class="row">
		<div class="col-md-6 col-md-offset-3 text-center">
			<p class="fh5co-social-icons">
				<a href="#"><i class="icon-twitter2"></i></a> <a href="#"><i
					class="icon-facebook2"></i></a> <a href="#"><i
					class="icon-instagram"></i></a> <a href="#"><i
					class="icon-dribbble2"></i></a> <a href="#"><i class="icon-youtube"></i></a>
			</p>
			<p>
				Copyright 2016 Free Html5 <a href="#">Module</a>. All Rights
				Reserved. <br>Made with <i class="icon-heart3"></i> by <a
					href="http://freehtml5.co/" target="_blank">Freehtml5.co</a> / Demo
				Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a>
			</p>
		</div>
	</div>
	</div>
	</div>
</body>
</html>