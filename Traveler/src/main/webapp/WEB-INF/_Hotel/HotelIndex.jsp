<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>hotelIndex</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />
    
	   
	
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/solid.css" integrity="sha384-29Ax2Ao1SMo9Pz5CxU1KMYy+aRLHmOu6hJKgWiViCYpz3f9egAJNwjnKGgr+BXDN" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/regular.css" integrity="sha384-seionXF7gEANg+LFxIOw3+igh1ZAWgHpNR8SvE64G/Zgmjd918dTL55e8hOy7P4T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/brands.css" integrity="sha384-ATC/oZittI09GYIoscTZKDdBr/kI3lCwzw3oBMnOYCPVNJ4i7elNlCxSgLfdfFbl" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/fontawesome.css" integrity="sha384-Lyz+8VfV0lv38W729WFAmn77iH5OSroyONnUva4+gYaQTic3iI2fnUKtDSpbVf0J" crossorigin="anonymous">
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
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">
		
			<!-- end:header-top -->
		<header id="fh5co-header-section" class="sticky-banner">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					<h1 id="fh5co-logo"><a href="index.html"><i class="fas fa-dove "></i>Traveler</a></h1>
					
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li></i><a href="index"><i class="fas fa-plane"></i>機票</a></li>							
							<li><a href="_Hotel/hotel"><i class="fas fa-home"></i>飯店</a></li>
							<li class="theme/themeTitles"><a href="hotel.html"><i class="fas fa-globe"></i>旅遊</a></li>
							<li><a href="car.html"><i class="fas fa-cart-arrow-down"></i>紅利商品</a></li>
							<li><a href="blog.html"><i class="fas fa-phone-square"></i>客服中心</a></li>
							<li><a href="contact.html"><i class="far fa-user-circle"></i>登入/註冊</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>

		<!-- end:header-top -->
	
		<div class="fh5co-hero">
			<!-- <div class="fh5co-overlay"></div> -->
			<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(/Traveler/images/T1.jpg);">
				<div class="desc">
					<div class="container">
						<div class="row">
							<div class="col-sm-5 col-md-5">
								<!-- <a href="index.html" id="main-logo">Travel</a> -->
								<div class="tabulation animate-box">

								  <!-- Nav tabs -->
								   <ul class="nav nav-tabs" role="tablist">
								      <li role="presentation">								      	
										    <a href="#flights" aria-controls="flights" role="tab" data-toggle="tab"><i class="fas fa-plane"></i>機票</a>
								      </li>									  
									  
									  <li role="presentation" class="active">															
											<a href="#hotels" aria-controls="hotels" role="tab" data-toggle="tab"><i class="fas fa-home"></i>飯店</a>
									  </li>
								   </ul>

								   <!-- Tab panes -->
									<div class="tab-content">
									 <div role="tabpanel" class="tab-pane" id="flights">
										<div class="row">
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="from">出發地:</label>
													<input type="text" class="form-control" id="from-place" placeholder="台北, 台灣"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="from">目的地:</label>
													<input type="text" class="form-control" id="to-place" placeholder="東京, 日本"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-start">出發日期:</label>
													<input type="text" class="form-control" id="date-start" placeholder="06-01-2018"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-end">回程日期:</label>
													<input type="text" class="form-control" id="date-end" placeholder="06-06-2018"/>
												</div>
											</div>
											<div class="col-sm-12 mt">
												<section>
													<label for="class">座位:</label>
													<select class="cs-select cs-skin-border">
														<option value="" disabled selected>經濟艙</option>
														<option value="economy">經濟艙</option>
														<option value="first">頭等艙</option>
														<option value="business">商務艙</option>
													</select>
												</section>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<section>
													<label for="class">成人:</label>
													<select class="cs-select cs-skin-border">
														<option value="" disabled selected>1位</option>
														<option value="1">1位</option>
														<option value="2">2位</option>
														<option value="3">3位</option>
														<option value="4">4位</option>
													</select>
												</section>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<section>
													<label for="class">小孩:</label>
													<select class="cs-select cs-skin-border">
														<option value="" disabled selected>1位</option>
														<option value="1">1位</option>
														<option value="2">2位</option>
														<option value="3">3位</option>
														<option value="4">4位</option>
													</select>
												</section>
											</div>
											<div class="col-xs-12">
												<input type="submit" class="btn btn-primary btn-block" value="搜尋">
											</div>
										</div>
									 </div>

									 <div role="tabpanel" class="tab-pane active" id="hotels">
									 	<div class="row">
											<div class="col-xxs-12 col-xs-12 mt">
												<div class="input-field">
													
													<label for="from">目的地:</label>
													<input type="text" class="form-control" id="from-place" placeholder="東京, 日本"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-start">入住日期:</label>
													<input type="text" class="form-control" id="date-start" placeholder="06-01-2018"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-end">退房日期:</label>
													<input type="text" class="form-control" id="date-end" placeholder="06-06-2018"/>
												</div>
											</div>
											<div class="col-sm-12 mt">
												<section>
													<label for="class">房間:</label>
													<select class="cs-select cs-skin-border">
														<option value="" disabled selected>雙人房</option>
														<option value="economy">單人房</option>
														<option value="first">三人房</option>
														<option value="business">四人房</option>
													</select>
												</section>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<section>
													<label for="class">成人:</label>
													<select class="cs-select cs-skin-border">
														<option value="" disabled selected>1位</option>
														<option value="1">1位</option>
														<option value="2">2位</option>
														<option value="3">3位</option>
														<option value="4">4位</option>
													</select>
												</section>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<section>
													<label for="class">小孩:</label>
													<select class="cs-select cs-skin-border">
														<option value="" disabled selected>1位</option>
														<option value="1">1位</option>
														<option value="2">2位</option>
														<option value="3">3位</option>
														<option value="4">4位</option>
													</select>
												</section>
											</div>
											<div class="col-xs-12">
												<input type="submit" class="btn btn-primary btn-block" value="搜尋">
											</div>
										</div>
									 </div>

									</div> 

								</div>
							</div>
						
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		

		<div id="fh5co-tours" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>最後歡迎的飯店 &amp; 飯店預定</h3>
						<p>每間現代化的寬敞客房均擁有極簡風格設計，每間客房都有免費WIFI</p>
					</div>
				</div>
				<div class="row row-bottom-padded-md">
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Traveler/images/place-1.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>New York</h3>
								<span>3 nights</span>
								<span class="price">$1,000</span>
								<a class="btn btn-primary btn-outline" href="#">Book Now <i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Traveler/images/place-2.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>Philippines</h3>
								<span>4 nights</span>
								<span class="price">$1,000</span>
								<a class="btn btn-primary btn-outline" href="#">Book Now <i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Traveler/images/place-3.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>Hongkong</h3>
								<span>2 nights</span>
								<span class="price">$1,000</span>
								<a class="btn btn-primary btn-outline" href="#">Book Now <i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Traveler/mages/place-1.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>New York</h3>
								<span>3 nights</span>
								<span class="price">$1,000</span>
								<a class="btn btn-primary btn-outline" href="#">Book Now <i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Traveler/images/place-2.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>Philippines</h3>
								<span>4 nights</span>
								<span class="price">$1,000</span>
								<a class="btn btn-primary btn-outline" href="#">Book Now <i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Traveler/images/place-3.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>Hongkong</h3>
								<span>2 nights</span>
								<span class="price">$1,000</span>
								<a class="btn btn-primary btn-outline" href="#">Book Now <i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
				</div>
				
				
				
				
				<div class="row">
					<div class="col-md-12 animate-box">
						<h2 class="heading-title">專屬於自己的舒適的飯店</h2>
					</div>
					<div class="col-md-6 animate-box">
						<p>酒店擁有各種設施，讓您住得愉快。服務人員將歡迎並指導您在Matinloc度假村。部分設備齊全的客房提供免費茶水、壁櫥、毛巾、木質/鑲木地板、衣架。</p>
						<p>這個度假村的客人享受免費的活動，保證從浮潛和皮划艇的充實！它的豪華海景客房、私人海灘、無限游泳池、沙灘餐廳、迷你健身房和圖書館不僅配有書籍和電腦，而且還有娛樂設施。</p>
						<a href="#">知道更多...<i class="icon-arrow-right22"></i></a>
					</div>
					<div class="col-md-6 animate-box">
						<img class="img-responsive" src="/Traveler/images/cover_bg_2.jpg" alt="travel">
					</div>
				</div>
			</div>
		</div>
		<div id="fh5co-testimonial" style="background-image:url(/Traveler/images/img_bg_1.jpg);">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>Happy Clients</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
							<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
						</blockquote>
						<p class="author">John Doe, CEO <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> <span class="subtext">Creative Director</span></p>
					</div>
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
							<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.&rdquo;</p>
						</blockquote>
						<p class="author">John Doe, CEO <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> <span class="subtext">Creative Director</span></p>
					</div>
					
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
							<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
						</blockquote>
						<p class="author">John Doe, Founder <a href="#">FREEHTML5.co</a> <span class="subtext">Creative Director</span></p>
					</div>
					
				</div>
			</div>
		</div>
	</div>
		
	
	
	
	
	
	
	<footer>
			<div id="footer">
				<div class="container">
					<div class="row row-bottom-padded-md">
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>About Travel</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
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
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-facebook2"></i></a>
								<a href="#"><i class="icon-instagram"></i></a>
								<a href="#"><i class="icon-dribbble2"></i></a>
								<a href="#"><i class="icon-youtube"></i></a>
							</p>
							<p>Copyright 2016 Free Html5 <a href="#">Module</a>. All Rights Reserved. <br>Made with <i class="icon-heart3"></i> by <a href="http://freehtml5.co/" target="_blank">Freehtml5.co</a> / Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a></p>
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

	</body>
</html>

