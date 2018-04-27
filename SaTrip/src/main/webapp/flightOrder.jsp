<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>>

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
<title>Travel &mash; 100% Free Fully Responsive HTML5 Template
	by FREEHTML5.co</title>
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
<link rel="shortcut icon" href="favicon.ico">

<!--<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>-->

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
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->


<!-- jQuery -->


<script src="js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/sticky.js"></script>

<!-- Stellar -->
<script src="js/jquery.stellar.min.js"></script>
<!-- Superfish -->
<script src="js/hoverIntent.js"></script>
<script src="js/superfish.js"></script>
<!-- Magnific Popup -->
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/magnific-popup-options.js"></script>
<!-- Date Picker -->
<script src="js/bootstrap-datepicker.min.js"></script>
<!-- CS Select -->
<script src="js/classie.js"></script>
<script src="js/selectFx.js"></script>

<!-- Main JS -->
<script src="js/main.js"></script>

<script>

<!--回傳搜尋內容開始-->
		var emp = ${result};
// 		alert(emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary[0].AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime);
// 		alert(emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary[0].AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime);
// 		alert(emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary[0].AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalDateTime);
// 		var detp =emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary[0].AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime;
// 		var detpp =emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary[0].AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalDateTime;
// 		$("#abc").after(detp).append(detpp);

/*
	$(document).ready(function(){
		var docFrag=$(document.createDocumentFragment());
		$.each(emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary,function(name,value){
			
			console.log("航空公司"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].OperatingAirline.Code)
			console.log("出發地"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureAirport.LocationCode)
			console.log("出發時間"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime)
			console.log("目的地"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalAirport.LocationCode)
			console.log("抵達時間"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalDateTime)
			console.log("飛行時間"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ElapsedTime)
			console.log("-------------------------------------------------")
			

		})
	*/

	$(document).ready(function(){
		var docFrag=$(document.createDocumentFragment());
		$.each(emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary,function(name,value){
				
       			var cell1=$("<div id='ddd'></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime)
	            var cell2=$("<div></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureAirport.LocationCode)
	            var td1=$("<td width='20%' align='center' valign='middle'></td>").append(cell1,cell2);
       			
	            var cell4=$("<div></div>").html("<img src=images/arrow.png>");
	            var td2=$("<td width='10%' align='center' valign='middle'></td>").append(cell4);
	            
	            var cell5=$("<div></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalDateTime);
	            var cell6=$("<div></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalAirport.LocationCode);
	            var td3=$("<td width='20%' align='center' valign='middle'></td>").append(cell5,cell6);
	            
	            var cell7=$("<span></span>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ElapsedTime);
	            var td4=$("<td  width='50%' align='center' valign='middle'></td>").append(cell7);
	            
	            var cellhr=$("<td colspan='5' align='center' valign='middle' ></td>").html("<hr>");
	            var row3=$("<tr></tr>").append(cellhr);
	            
	            var cell10=$("<div></div>").html("<p>每人含稅</p><button type='button' class='btn btn_yell' onclick='sendDetails()'>訂位</button>");
	            var td5=$("<td></td>").append(cell10);
	            
	            var row1=$("<tr></tr>").append(td1,td2,td3,td4,td5);
	            docFrag.append(row1,row3);
		})
		$("#ticketResult").html(docFrag);
		
	
		
		
		
		<!-- 回傳搜尋內容結束-->
		<!--   分頁功能開始-->

		var totalSize=$("table tbody>tr").length; //獲取總數據
		   console.log(totalSize);
		
		    var pageSize=10;      //每頁顯示數據條數
			var currentPage=1;   //當前頁數
			var totalPage=Math.round(totalSize/pageSize); //計算總頁數
			$("table tbody>tr:gt(9)").hide(); //設置首頁顯示4條數據
			$(".total").text(totalPage);  //設置總頁數
			$(".current_page").text(currentPage); //設置當前頁數
		
		
			$(".next").click(function(){
				if(currentPage ==totalPage){ //當前頁數==最後一頁，禁止下一頁
					   return false;
					}else{//不是最後一頁，顯示應該顯示的數據.
					    $(".current_page").text(++currentPage);  //當前頁數先+1
						var start=pageSize*(currentPage-1);
						var end=pageSize*currentPage;
						$.each($('table tbody>tr'),function(index,item){
								if(index >=start && index < end){
									$(this).show();
									}
									else{
										$(this).hide();
										}
							});
						
						}
				});
			
			
			$(".prev").click(function(){
				if(currentPage == 1){//當前頁數==1，禁止上一頁
				     return false;
					}else{
						 $(".current_page").text(--currentPage);  //當前頁數先-1
						 var start=pageSize*(currentPage-1);
						 var end=pageSize*currentPage;
						 $.each($('table tbody>tr'),function(index,item){
							   if(index >=start && index < end){
									$(this).show();
									}
									else{
										$(this).hide();
										}
							 });
						}
				
				});
			
		<!--分頁功能結束-->
		 var temp=$("#ddd").text;
	})
	
	<!-- 傳送選擇航班資料回SERVER 開始-->
		function sendDetails(){
				$.ajax({
				    type : "get",
				    url : "http://localhost:8080/SaTrip/booking",
				    data: "id=1969&name=John", // 資料是用 & 做串接
				    success : function(response) {
				        alert('Success');
				        alert($("#ddd").text);
				        alert(temp);
				        window.location.assign("http://localhost:8080/SaTrip/test.jsp");
				    },
				    error : function() {
				        alert('fail');
				    }
				});
				
				
				
				
			}
		<!-- 傳送選擇航班資料回SERVER 結束-->
	
			
</script>


<style type="text/css"> 
    .main123{width:800px;zoom:1;margin:0 auto;} 
    .item123{width:800px;overflow:hidden;} 
    ul{padding:0;width:860px;zoom:1;} 
    .clear123{zoom:1;} 
    .clear123:after{content:"";display:block;height:0;clear:both;visibility:hidden;} 
/*     table tbody>tr{list-style-type:none;float:left;background:#F69;font-size:60px;text-shadow:1px 1px 3px #555;width:380px;height:200px;margin:10px 40px 10px 0;line-height:200px;text-align:center;color:#fff;}  */
    .page_btn{padding-top:20px;} 
    .page_btn a{cursor:pointer;padding:5px;border:solid 1px #ccc;font-size:12px;} 
    .page_box{float:right;} 
    .num{padding:0 10px;} 
    .btn_yell{background-color:#ffa64d;color:black}
</style> 

</head>
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
								<li class="active"><a href="index.html">Home</a></li>
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

			<div class="fh5co-hero">
			
<!-- 	背景暖色系樣式			<div class="fh5co-overlay"></div> -->
				<div class="fh5co-cover" data-stellar-background-ratio="0.5"
					style="background-image: url(images/cover_bg_1.jpg);">

					<div>
					  <div class="page_btn clear"> 
            <span class="page_box"> 
                <a class="prev">上一頁</a>
                <span class="num"><span class="current_page">1</span><span style="padding:0 3px;">/</span><span class="total"></span></span>
                <a class="next">下一頁</a> 
            </span> 
					
					
					 <div class="main123"> 
        <div class="item123"> 
        
        <c:if test="${empty result}">
	<div style="margin:5px;" align="center">
	<h2  style="color:red">查無航班，請重新搜尋</h2>
	<a style="font-size:1em;" href="index.jsp">回首頁</a>
	</div>
	</c:if>
 						<table class="clear123" width=100%  align="center" style=" border: 5px solid red ; background-color: white">
						
						<!--  -->
			
			<tbody id="ticketResult">
					<tr></tr>
                    </tbody>
			
			
							<!--  -->
						</table>
        </div> 
        <div class="page_btn clear"> 
					

					</div>
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
						Copyright 2016 Free Html5 <a href="#">Module</a>. All Rights
						Reserved. <br>Made with <i class="icon-heart3"></i> by <a
							href="http://freehtml5.co/" target="_blank">Freehtml5.co</a> /
						Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a>
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

</div>
</body>
</html>


