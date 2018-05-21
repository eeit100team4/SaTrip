<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Travel &mash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
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
<link rel="shortcut icon" href="images/favicon.ico">

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


<script src="/Traveler/js/airplain/airSearch.js"></script>
<script src="/Traveler/js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="/Traveler/js/jquery-ui.min.css">

<!-- 連結旁邊的小ICON套件  -->	
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe" crossorigin="anonymous"></script>

</head>
<body>
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>
	
			<div class="container">


				<div class="row2">
					<div class="col2-75">
						<div class="container2">
							<form action="/action_page.php">

								<div class="row2">
									<div class="col2-50">
										<h3>Billing Address</h3>
										<label for="fname"><i class="fa fa-user"></i> Full
											Name</label> <input type="text" id="fname" name="firstname"
											placeholder="John M. Doe"> <label for="email"><i
											class="fa fa-envelope"></i> Email</label> <input type="text"
											id="email" name="email" placeholder="john@example.com">
										<label for="adr"><i class="fa fa-address-card-o"></i>
											Address</label> <input type="text" id="adr" name="address"
											placeholder="542 W. 15th Street"> <label for="city"><i
											class="fa fa-institution"></i> City</label> <input type="text"
											id="city" name="city" placeholder="New York">

										<div class="row2">
											<div class="col2-50">
												<label for="state">State</label> <input type="text"
													id="state" name="state" placeholder="NY">
											</div>
											<div class="col2-50">
												<label for="zip">Zip</label> <input type="text" id="zip"
													name="zip" placeholder="10001">
											</div>
										</div>
									</div>

									<div class="col2-50">
										<h3>Payment</h3>
										<label for="fname">Accepted Cards</label> <label for="cname">Name
											on Card</label> <input type="text" id="cname" name="cardname"
											placeholder="John More Doe"> <label for="ccnum">Credit
											card number</label> <input type="text" id="ccnum" name="cardnumber"
											placeholder="1111-2222-3333-4444"> <label
											for="expmonth">Exp Month</label> <input type="text"
											id="expmonth" name="expmonth" placeholder="September">

										<div class="row2">
											<div class="col2-50">
												<label for="expyear">Exp Year</label> <input type="text"
													id="expyear" name="expyear" placeholder="2018">
											</div>
											<div class="col2-50">
												<label for="cvv">CVV</label> <input type="text" id="cvv"
													name="cvv" placeholder="352">
											</div>
										</div>
									</div>

								</div>
								<label> <input type="checkbox" checked="checked"
									name="sameadr"> Shipping address same as billing
								</label> <input type="submit" value="Continue to checkout" class="btn">
							</form>
						</div>
					</div>


				</div>




			</div>			
	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>
</html>