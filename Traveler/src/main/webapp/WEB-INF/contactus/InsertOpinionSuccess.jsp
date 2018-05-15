<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->

<html class="no-js">
<!--<![endif]-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Travel &mdash; 100% Free Fully Responsive HTML5 Template
	by FREEHTML5.co</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />
<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="../css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="../css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="../css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="../css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="../css/magnific-popup.css">
<!-- Date Picker -->
<link rel="stylesheet" href="../css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet" href="../css/cs-select.css">
<link rel="stylesheet" href="../css/cs-skin-border.css">

<link rel="stylesheet" href="../css/style.css">

<!-- Modernizr JS -->
<script src="../js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<!-- <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"> -->

<title>意見反應表</title>
</head>
<style>
table{
border:1px solid black;
}
p{
color:black;
}
th{
color:black;
}
</style>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">

			<header id="fh5co-header-section" class="sticky-banner">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					<h1 id="fh5co-logo">
						<a href="index.html"><i class="icon-airplane"></i>Travel</a>
					</h1>
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
					<ul class="sf-menu" id="fh5co-primary-menu">
						<li><a href="index.html">Home</a></li>
						<li><a href="vacation.html" class="fh5co-sub-ddown">Vacations</a>
							<ul class="fh5co-sub-menu">
								<li><a href="#">Family</a></li>
								<li><a href="#">CSS3 &amp; HTML5</a></li>
								<li><a href="#">Angular JS</a></li>
								<li><a href="#">Node JS</a></li>
								<li><a href="#">Django &amp; Python</a></li>
							</ul></li>
						<li><a href="flight.html">Flights</a></li>
						<li><a href="hotel.html">Hotel</a></li>
						<li><a href="car.html">Car</a></li>
						<li class="active"><a href="contactusopinion">客戶服務</a>
						<ul class="fh5co-sub-menu">
								<li><a href="InsertOpinionSuccess">查看回覆</a></li>
						<li><a href="mailto:asally1110@gmail.com">客服信箱</a></li>
						</ul></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
					</nav>
				</div>
			</div>
			</header>

			<!-- end:header-top -->

			<div class="fh5co-hero">
			
				<div class="fh5co-cover" data-stellar-background-ratio="0.5"
					style="background-image: url(../images/contactus.jpg);">
					<div class="desc">
						<div class="container">
							<div class="row">
								<div class="col-sm-5 col-md-5">
								<div class="tabulation animate-box">
								<section class='container'>
							
							<p style=color:black>姓名:${aa.name}</p>
							<p style=color:black>性別:${aa.sex}</p>
							<p style=color:black>年齡:${aa.age}</p>
							<p style=color:black>連絡電話:${aa.phone}</p>
							<p style=color:black>電子信箱:${aa.email}</p>
							<p style=color:black>所在地:${aa.address}</p>
							<p style=color:black>意見類別:${aa.opinion}</p>
							<p style=color:black>意見內容:${aa.comment}</p>
							<p style=color:black>回覆內容:${aa.feedback}</p>

							
						
					
	</div>
						</section>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

<!-- 	fh5co-blog-section -->

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
	</footer>

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	<script src="../js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="../js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="../js/jquery.waypoints.min.js"></script>
	<script src="../js/sticky.js"></script>

	<!-- Stellar -->
	<script src="../js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="../js/hoverIntent.js"></script>
	<script src="../js/superfish.js"></script>
	<!-- Magnific Popup -->
	<script src="../js/jquery.magnific-popup.min.js"></script>
	<script src="../js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="../js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="../js/classie.js"></script>
	<script src="../js/selectFx.js"></script>

	<!-- Main JS -->
	<script src="../js/main.js"></script>
</body>
</html>