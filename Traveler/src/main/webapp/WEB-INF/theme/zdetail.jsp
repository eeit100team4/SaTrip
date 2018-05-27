<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
	
<div style="text-align:center;margin-left:100px; margin-top:20px;">
  <h1 style="color:#009494;">詳細資訊</h1>
    <hr>
    
    <h2 style="color:#00D100;">行程資訊</h2>
    <b style='font-size:16px;'>${detail.themeProducts.productName}</b><br>
    <b style='font-size:16px;'>出團日期<fmt:formatDate value="${detail.setOut}" pattern="yyyy/MM/dd" /></b>
    <b style='font-size:16px;'>報名截止日<fmt:formatDate value="${detail.deadline}" pattern="yyyy/MM/dd" /></b><br>
    <b style='font-size:16px;'>旅遊國家${detail.themeProducts.country}</b>
    <b style='font-size:16px;'>標準團費${detail.price}</b><br>
    <hr>
    <h2 style="color:#00D100;">航班資訊(去)</h2>
    <b style='font-size:16px;'>${detail.companyName}</b>&nbsp;&nbsp;${detail.goPlaneId}<br>
    <b style='font-size:16px;'>出發時間&nbsp;&nbsp;<fmt:formatDate value="${detail.setOut}" pattern="yyyy/MM/dd" />&nbsp;&nbsp;${detail.goStartHour}&nbsp;:&nbsp;${detail.goStartMinute}&nbsp;&nbsp;${detail.goStartWhere}</b><br>
    <b style='font-size:16px;'>抵達時間&nbsp;&nbsp;<fmt:formatDate value="${detail.setOut}" pattern="yyyy/MM/dd" />&nbsp;&nbsp;${detail.goEndHour}&nbsp;:&nbsp;${detail.goEndMinute}&nbsp;&nbsp;${detail.goEndWhere}</b><br>
    <hr>
    <h2 style="color:#00D100;">航班資訊(回)</h2>
    <b style='font-size:16px;'>${detail.companyName}</b>&nbsp;&nbsp;${detail.returnPlaneId}<br>
    <b style='font-size:16px;'>出發時間&nbsp;&nbsp;<fmt:formatDate value="${detail.returnDay}" pattern="yyyy/MM/dd" />&nbsp;&nbsp;${detail.returnStartHour}&nbsp;:&nbsp;${detail.returnStartMinute}&nbsp;&nbsp;${detail.returnStartWhere}</b><br>
    <b style='font-size:16px;'>抵達時間&nbsp;&nbsp;<fmt:formatDate value="${detail.returnDay}" pattern="yyyy/MM/dd" />&nbsp;&nbsp;${detail.returnEndHour}&nbsp;:&nbsp;${detail.returnEndMinute}&nbsp;&nbsp;${detail.returnEndWhere}</b><br>
    <hr>
    
    
    
    <a onmouseover="this.style.color='orange'" onmouseout="this.style.color='#4F4FFF'" style="color:#4F4FFF;font-size:25px;" href="${detail.journeyId}/application">報名</a>    
    
</div>
<hr>
	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>
</html>