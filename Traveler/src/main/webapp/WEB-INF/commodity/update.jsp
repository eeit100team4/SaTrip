<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
	integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
	integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
	crossorigin="anonymous"></script>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="/Traveler/images/LeftTopCorner.ico">

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
<!-- 連結旁邊的小ICON套件  -->	
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe" crossorigin="anonymous"></script>

<!-- 測試側邊 -->
<style>
* {
	margin: 0;
	padding: 0;
}
#mwt_mwt_slider_scroll
{
top: 95px;
left:0px; 
width:200px;
position:fixed; 
z-index:9999;
}

#mwt_slider_content{
/* background:#FF8800; */
 background:#FF8800; 
text-align:center;
padding-top:20px;
}

#mwt_fb_tab {
position:absolute;
top:20px;
right:-24px;
width:24px;
background:#FF8800;
color:#ffffff;
font-family:Arial, Helvetica, sans-serif;
text-align:center;
padding:9px 0;

-moz-border-radius-topright:10px;
-moz-border-radius-bottomright:10px;
-webkit-border-top-right-radius:10px;
-webkit-border-bottom-right-radius:10px;
}
#mwt_fb_tab span {
display:block;
height:12px;
padding:1px 0;
line-height:12px;
text-transform:uppercase;
font-size:12px;
}
</style>
<script type='text/javascript'>
$(document).ready(function(){
	$("#mwt_mwt_slider_scroll").animate({ left:'0px' }, 600 ,'swing');
	$('#mwt_slider_content').css('height', ($(window).height() - 20) + 'px' );
})
// $(function(){
// var w = $("#mwt_slider_content").width();
// $('#mwt_slider_content').css('height', ($(window).height() - 20) + 'px' ); //將區塊自動撐滿畫面高度

// $("#mwt_fb_tab").mouseover(function(){ //滑鼠滑入時
// if ($("#mwt_mwt_slider_scroll").css('left') == '-'+w+'px')
// {
// $("#mwt_mwt_slider_scroll").animate({ left:'0px' }, 600 ,'swing');
// }
// });


// $("#mwt_slider_content").mouseleave(function(){　//滑鼠離開後
// $("#mwt_mwt_slider_scroll").animate( { left:'-'+w+'px' }, 600 ,'swing');
// });
// });

</script>
<style>
html,body{
margin:0;
padding:0;
height:100%;
}
.wrapper{
min-height:100%;
margin-bottom:0px;
}
.footer .push{
margin-bottom:0px;
}
</style>
<style>

.list1 {
	list-style: decimal inside;
}


.d1 {
	background-color: #FF8800;
	width: 20%;
	height: 5000px;
	float: left;
}


.dx {
	border: 1.5px solid #AAAAAA;
	height: 300px;
	width: 90%;
	padding: 10px;
}

.dr {
	float: left;
	width: 20.7%;
	height: 300px;
	margin: auto;
	padding: 25px;
}

.dt {
	float: right;
	width: 79%;
	height: 300px;
}
.ds{

 height:300px;
 width:100%;
 
}
.dr{
 
  float:left;
width: 20.7%;
height:270px;
margin:auto;
}

.dt{

  float:right;
width: 79%;
height:270px;
}
</style>

<title>TravelerManager</title>


</head>
<body>
	<div id="allpage">
		<%@ include file="/WEB-INF/backStageHeader.jsp" %>

<!--=========================要放的東西  =====================-->
		

	
<div class="container" style="padding-top:20px">
<c:forEach var='comm' items='${commlist}'>
		<div class="ds">

			<form:form action='/Traveler/update/${comm.commodityid}'
				modelAttribute="CommodityBean" enctype="multipart/form-data">

				<fieldset>
					<div class="dr">
						<img width='180' height='180'
							src="<c:url value='/getPicture/${comm.commodityid}'/>" />
					</div>

					<div class="dt">
						<div class="form-group row col-md-8">
							<label for='name' class="col-sm-2 col-form-label">產品名:</label>
							<div class="col-sm-10">
								<form:input id='name' class="form-control" path='name'
									type='text' value='${comm.name}' />
							</div>
						</div>

						<div class="form-group row col-md-8">
							<label for='quantity' class="col-sm-2 col-form-label">數量
								:</label>
							<div class="col-sm-10">
								<form:input id='quantity' class="form-control" path='quantity'
									type='text' value='${comm.quantity}' />
							</div>
						</div>

						<div class="form-group row col-md-8">
							<label for='price' class="col-sm-2 col-form-label">價格 :</label>
							<div class="col-sm-10">
								<form:input id='price' class="form-control" path='price'
									type='text' value='${comm.price}' />
							</div>
						</div>


						<div class="form-group row col-md-8">
							<label for='point' class="col-sm-2 col-form-label">點數 :</label>
							<div class="col-sm-10">
								<form:input id='point' class="form-control" path='point'
									type='text' value='${comm.point}' />
							</div>
						</div>
                            
						<input type="submit" class="btn btn-warning" value="修改">
					
					</div>

				</fieldset>
				<hr>

			</form:form>

		</div>
	</c:forEach>
</div>
	
		
<!-- =========側邊欄位開始============ -->	
<div id="mwt_mwt_slider_scroll">
			<div id="mwt_slider_content"   >
				<div id="nav" style="margin:auto;">			 
					 <ul >
				 		 <li>
							<a class="btn btn-primary"href="commlist" ><h3><font color="white">商品清單</font></h3></a>
						 </li>
						  <li >
						   	<a class="btn btn-primary"href="tsuika"><h3><font color="white">新增商品</font></h3></a>			   
						  </li>
						  <li >
						   	<a class="btn btn-primary"href="henkou"><h3><font color="white">修改商品</font></h3></a>			   
						  </li>
						  <li >
						   	<a class="btn btn-primary"href="ClientLists"><h3><font color="white">兌換清單</font></h3></a>			   
						  </li>
						   <li >
						   	<a class="btn btn-primary"href="maruru"><h3><font color="white">兌換統計</font></h3></a>			   
						  </li>
					 </ul>
				</div>
			</div>
		</div>
<!-- =========側邊欄位結束============ -->		
		
		
	</div>
	
	<%@ include file="/WEB-INF/backStageFooter.jsp" %>
	
	<script>

$(document).ready(function(){
  
	
	var c1={'color':'#444444'};
	var c2={'color':'#FFFFFF'};
	
	$('.aa').css(c1).mouseover(over).mouseout(out);
	
	function over(){
		$(this).css(c2)
	}
	
	function out(){
		$(this).css(c1)
	}
})

</script>	
	
</body>

</html>