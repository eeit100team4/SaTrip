<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">
<!-- Date Picker -->
<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet" href="css/cs-select.css">
<link rel="stylesheet" href="css/cs-skin-border.css">

<link rel="stylesheet" href="css/style.css">


<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<style>
.do {
	border: 2px solid black;
	width: 50%;
	margin: auto;
}
</style>



<title></title>
</head>
<body>
	<header id="fh5co-header-section" class="sticky-banner">
	<div class="container">
		<div class="nav-header">
			<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
			<h1 id="fh5co-logo">
				<a href=""><i class="icon-airplane"></i>Travel</a>
			</h1>
			<!-- START #fh5co-menu-wrap -->
			<nav id="fh5co-menu-wrap" role="navigation">
			<ul class="sf-menu" id="fh5co-primary-menu">
				<li class="active"><a href="">Home</a></li>
				<li><a href="theme/themeTitles" class="fh5co-sub-ddown">主題旅遊</a>
					<!-- 下面這塊ul以後會刪掉 -->
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
				<li><a href="blog.html">客戶服務</a></li>
				<li><a href="contact.html">Contact</a></li>
			</ul>
			</nav>
		</div>
	</div>
	</header>


	<div class="do">
		<form:form method='POST' action='/woodstock/addclientpath'
			modelAttribute="Client" enctype="multipart/form-data">
<input type="hidden" name="commid" value="${Client.commodityBean.commodityid}">
			<legend style="align: center">您兌換商品為</legend>
			<div>
				<img width='200' height='200'
					src="<c:url value='/getPicture/${Client.commodityBean.commodityid}'/>" />
				<div>${Client.commodityBean.name}</div>
			</div>

			<div>商品點數:${Client.commodityBean.point}</div>

			<div>
				<div>會員點數:${Client.memberBean.point}</div>

			</div>

			<div>
				<label for='quantity'>數量:</label>
				<div>
					<form:select path="cliquantity" id="quantity">
						<form:option value="1" lable="" />
						<form:option value="2" lable="" />
						<form:option value="3" lable="" />
						<form:option value="4" lable="" />
					</form:select>
				</div>
			</div>


			<div>
				<label for='clientname'>收件人姓名:</label>
				<div>
					<form:input type="text" id="clientname" name='clientname' path="clientname"
						value='${Client.memberBean.chineseLastName}${Client.memberBean.chineseFirstName}' />
				</div>
			</div>

			<div>
				<label for='clientaddr'>寄送地址:</label>
				<div>
					<form:input type="text" id="clientaddr" name='clientaddr'
						path="clientaddr" value='${Client.memberBean.address}' />
				</div>
			</div>

			<div>
				<label for='clienttel'>電話:</label>
				<div>
					<form:input type="text" id="clienttel" name='clienttel'
						path="clienttel" value='${Client.memberBean.mobile}' />
				</div>
			</div>


			<div>
				<label for='Transport'>寄送方式:</label>
				<div>
					<form:select path="clitransport" id="Transport">
						<form:option value="郵局" lable="" />
						<form:option value="黑貓宅急便" lable="" />
					</form:select>
				</div>
			</div>


			<button type="submit" class="btn btn-primary" id='cliAdd'>送出</button>
		</form:form>

	</div>






</body>



</html>