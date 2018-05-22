<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


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


<script>
var target="${location}";

$(document).ready(function(){
	
	test();
	
})
function test(){
		
// 爬樹順序 0,3 $("#option").find("table:eq(1)").css("display","none");
var length= $("#option").find("table").length;
for(var x=0;x<length;x++){
	var country= $("#option").find("table:eq(1)").find("tbody").find("tr:eq(1)").find("td:eq(0)").text();
	var city= $("#option").find("table:eq("+x+")").find("tbody").find("tr:eq(0)").find("td:eq(0)").text();	
	if(!target.match(country+city)){
		$("#option").find("table:eq("+x+")").css("display","none");
		alert(country+city);
	}	
}

}
</script>



</head>
<body>
		<%@ include file="/WEB-INF/frontStageHeader.jsp"%>

					<main role="main" class="container mt-2">
			<div class="row">
			<div class="col-md-3">			
<%-- 				<%@ include file="/WEB-INF/hotelPartials/Search.jsp"%>	 --%>
			<div class="col-md-9">
				<div class="card">
					<div class="card-header"></div>
					<div class="card-body">
						<div id="option">		
						<c:forEach  var="hotelInfo" items="${hotels}">			
						<table class="simpleTable">							  
							  <thead>
							    <tr>
							      <th>本日優惠</th>
							      <th></th>
							      <th></th>
							    </tr>
							  </thead>	
							  <tbody>							  
							  	<tr>
							      <td>${hotelInfo.city}</td>
							      <td>${hotelInfo.name}</td>
							      <td>${hotelInfo.hotelRoomBean.price}</td>
							    </tr>
							    <tr>
							      <td>${hotelInfo.country}</td>
							      <td></td>
							      <td><input type="submit" class="btn btn-primary btn-block" value="搜尋"></td>
							    </tr>
							    <tr>
							      <td><img width='600' height='300' src="<c:url value='/getPic/${hotelInfo.hotel_id}' />" /></td>
							      <td></td>
							      <td></td>
							    </tr>
						 	  </tbody>
					    </table>			
						</c:forEach>					
					 </div>
					</div>
				</div>	
				</div>				
			</div>
			</div>
			</div>
		</main>




			









<!-- 記得爬樹 -->
<!-- 		<div id="option">		 -->
<%-- 			<c:forEach  var="hotelInfo" items="${hotels}">			 --%>
<!-- 			<table class="table table-dark"> -->
<!-- 				  <thead> -->
<!-- 				    <tr> -->
<!-- 				      <th scope="col">照片</th> -->
<!-- 				      <th scope="col">國家</th> -->
<!-- 				      <th scope="col">城市</th> -->
<!-- 				      <th scope="col">飯店</th> -->
<!-- 				      <th scope="col">房號</th>			       -->
<!-- 				    </tr> -->
<!-- 				  </thead> -->
<!-- 				  <tbody> -->
<!-- 				    <tr>			      		       -->
<%-- 				      <td><img width='600' height='300' src="<c:url value='/getPic/${hotelInfo.hotel_id}' />" /></td> --%>
<%-- 				      <td>${hotelInfo.country}</td> --%>
<%-- 				      <td>${hotelInfo.city}</td> --%>
<%-- 				      <td>${hotelInfo.name}</td> --%>
<%-- 				      <td>${hotelInfo.room_no}</td>			       --%>
<%-- 				      <td>${hotelInfo.room_no}</td>			      			       --%>
<!-- 				    </tr> -->
<!-- 			 	  </tbody> -->
<!-- 		    </table>			 -->
<%-- 			</c:forEach> --%>
<!-- 		</div> -->


	
	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>
</html>
