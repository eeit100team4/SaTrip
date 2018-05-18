<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>DisplayRoom</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />


<!-- -------------------------------------------------------------------------------------------------------	 -->
<!-- (原廠設定)Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="/Traveler/images/LeftTopCorner.ico">
<!-- (原廠設定) -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>
<!-- (原廠設定) -->
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- (原廠設定) -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/all.css"
	integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1"
	crossorigin="anonymous">
<!-- (原廠設定) -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/solid.css"
	integrity="sha384-29Ax2Ao1SMo9Pz5CxU1KMYy+aRLHmOu6hJKgWiViCYpz3f9egAJNwjnKGgr+BXDN"
	crossorigin="anonymous">
<!-- (原廠設定) -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/regular.css"
	integrity="sha384-seionXF7gEANg+LFxIOw3+igh1ZAWgHpNR8SvE64G/Zgmjd918dTL55e8hOy7P4T"
	crossorigin="anonymous">
<!-- (原廠設定) -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/brands.css"
	integrity="sha384-ATC/oZittI09GYIoscTZKDdBr/kI3lCwzw3oBMnOYCPVNJ4i7elNlCxSgLfdfFbl"
	crossorigin="anonymous">
<!-- (原廠設定) -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/fontawesome.css"
	integrity="sha384-Lyz+8VfV0lv38W729WFAmn77iH5OSroyONnUva4+gYaQTic3iI2fnUKtDSpbVf0J"
	crossorigin="anonymous">
<!-- (原廠設定)Animate.css -->
<link rel="stylesheet" href="/Traveler/css/animate.css">
<!-- (原廠設定)Icomoon Icon Fonts-->
<link rel="stylesheet" href="/Traveler/css/icomoon.css">
<!-- (原廠設定)Bootstrap  -->
<link rel="stylesheet" href="/Traveler/css/bootstrap.css">
<!-- (原廠設定)Superfish -->
<link rel="stylesheet" href="/Traveler/css/superfish.css">
<!-- (原廠設定)Magnific Popup -->
<link rel="stylesheet" href="/Traveler/css/magnific-popup.css">
<!-- (原廠設定)Date Picker -->
<link rel="stylesheet" href="/Traveler/css/bootstrap-datepicker.min.css">
<!-- (原廠設定)CS Select -->
<link rel="stylesheet" href="/Traveler/css/cs-select.css">
<link rel="stylesheet" href="/Traveler/css/cs-skin-border.css">
<link rel="stylesheet" href="/Traveler/css/style.css">
<!--(額外補足)Bootstrap 網頁的基本結構-->
<link rel="stylesheet" href="/Traveler/css/bootstrap.min.css">
<link rel="stylesheet" href="/Traveler/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- -------------------------------------------------------------------------------------------------------	 -->
<!-- jQuery -->
<!-- (原廠設定) -->
<script src="/Traveler/js/jquery.min.js"></script>
<!-- (原廠設定)jQuery Easing -->
<script src="/Traveler/js/jquery.easing.1.3.js"></script>
<!-- (原廠設定)Bootstrap -->
<script src="/Traveler/js/bootstrap.min.js"></script>
<!-- (原廠設定)Waypoints -->
<script src="/Traveler/js/jquery.waypoints.min.js"></script>
<script src="/Traveler/js/sticky.js"></script>
<!-- (原廠設定)Stellar -->
<script src="/Traveler/js/jquery.stellar.min.js"></script>
<!-- (原廠設定)Superfish -->
<script src="/Traveler/js/hoverIntent.js"></script>
<script src="/Traveler/js/superfish.js"></script>
<!-- (原廠設定)Magnific Popup -->
<script src="/Traveler/js/jquery.magnific-popup.min.js"></script>
<script src="/Traveler/js/magnific-popup-options.js"></script>
<!-- (原廠設定)Date Picker -->
<script src="/Traveler/js/bootstrap-datepicker.min.js"></script>
<!-- (原廠設定)CS Select -->
<script src="/Traveler/js/classie.js"></script>
<script src="/Traveler/js/selectFx.js"></script>
<!-- (原廠設定)Main JS -->
<script src="/Traveler/js/main.js"></script>
<!-- (原廠設定)Modernizr JS -->
<script src="/Traveler/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

<!-- -------------------------------------------------------------------------------------------------------	 -->
<!--(額外補足)Bootstrap 網頁的基本結構-->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<!-- (有問題的)Bootstrap 網頁的基本結構 -->
<!-- <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
<!-- <script src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js"></script> -->

<!-- --------A別人的網站-----------------------------------------------------------------------------------------------	 -->




<!-- -------------------------------------------------------------------------------------------------------	 -->

</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">

			<!-- end:header-top -->
			<header id="fh5co-header-section" class="sticky-banner">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="index.html"><i class="fas fa-dove "></i>Traveler</a>
						</h1>
						<!-- -------------------------------------------------------------------------------------------------------	 -->
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li></i><a href="index"><i class="fas fa-plane"></i>機票</a></li>
								<li><a href="_Hotel/hotel"><i class="fas fa-home"></i>飯店</a></li>
								<li class="theme/themeTitles"><a href="hotel.html"><i
										class="fas fa-globe"></i>旅遊</a></li>
								<li><a href="car.html"><i
										class="fas fa-cart-arrow-down"></i>紅利商品</a></li>
								<li><a href="blog.html"><i class="fas fa-phone-square"></i>客服中心</a></li>
								<li><a href="contact.html"><i
										class="far fa-user-circle"></i>登入/註冊</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</header>
			
				<hr style="height: 1px; border: none; color: #333; background-color: #333;">
			<!-- -------------------------------------------------------------------------------------------------------	 -->
			<!-- ____________上欄位整行____________↓ -->

<!-- 			<div class="col-xl"> -->
<!-- 				<div class="well"> -->
<!-- 					<div class="col-sm-3">欄位1</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
			<!-- ____________主要布局____________↓ -->
			<div class="container-fluid">

				<!-- ____________左邊欄位____________↓ -->
				<!-- --------A別人的網站-----------------------------------------------------------------------------------------------	 -->
<!-- 				<article> -->

					<div class="col-md-2 col-md-offset-1">
		
					</div>


			<!-- -------------------------------------------------------------------------------------------------------	 -->
			<div class="row" >
			<c:forEach var='product' items='${hotels}'>
			<div class="col-sm-8">
			 	
			<div class="panel panel-danger">
						
            <div class="panel-heading">${product.name}</div>
            
            <div class="panel-body">
	            <div class="col-md-7" >           
		            <img width='600' height='250'	src="<c:url value='/getPic/${product.hotel_id}' />" /> </div>
	             </div>
	             <div class="col-md-5"> 
					          <h3>Project One</h3>
					          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
					          
					        </div>
            </div>
            <div class="panel-footer">
            
            <button class="btn btn-default btn-block"><a class="btn btn-primary" href="">View Project</a></button>
                        
            </div>
            </div>          
            </div>
            </c:forEach>
            </div>
			
			<!-- ____________主要布局____________↑ -->
			</div>


			<!-- -------------------------------------------------------------------------------------------------------	 -->
			<footer>
				<div id="footer">
					<div class="container">
						<div class="row row-bottom-padded-md">
							<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
								<h3>About Travel</h3>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.</p>
							</div>
							<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">

								<h3>Top Flights Routes</h3>
								<ul>
									<li><a href="#">Manila flights</a></li>
									<li><a href="#">Dubai flights</a></li>
									<li><a href="#">Bangkok flights</a></li>
									<li><a href="#">Tokyo Flight</a></li>
									<li><a href="#">New York Flights</a></li>
								</ul>
							</div>
							<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
								<h3>Top Hotels</h3>
								<ul>
									<li><a href="#">Boracay Hotel</a></li>
									<li><a href="#">Dubai Hotel</a></li>
									<li><a href="#">Singapore Hotel</a></li>
									<li><a href="#">Manila Hotel</a></li>
								</ul>
							</div>
							<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
								<h3>Interest</h3>
								<ul>
									<li><a href="#">Beaches</a></li>
									<li><a href="#">Family Travel</a></li>
									<li><a href="#">Budget Travel</a></li>
									<li><a href="#">Food &amp; Drink</a></li>
									<li><a href="#">Honeymoon and Romance</a></li>
								</ul>
							</div>
							<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
								<h3>Best Places</h3>
								<ul>
									<li><a href="#">Boracay Beach</a></li>
									<li><a href="#">Dubai</a></li>
									<li><a href="#">Singapore</a></li>
									<li><a href="#">Hongkong</a></li>
								</ul>
							</div>
							<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
								<h3>Affordable</h3>
								<ul>
									<li><a href="#">Food &amp; Drink</a></li>
									<li><a href="#">Fare Flights</a></li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 col-md-offset-3 text-center">
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter2"></i></a> <a href="#"><i
										class="icon-facebook2"></i></a> <a href="#"><i
										class="icon-instagram"></i></a> <a href="#"><i
										class="icon-dribbble2"></i></a> <a href="#"><i
										class="icon-youtube"></i></a>
								</p>
								<p>
									Welcome to in Traveler.<i class="icon-heart3"></i>
								</p>
							</div>
						</div>
					</div>
				</div>
			</footer>
</body>
</html>

