<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>TravelerManager</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />



<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<!-- <link rel="shortcut icon" href="/Traveler/images/favicon.ico"> -->

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
table{
 border:2px black solid;
 width:500px;
 heigth:800px;
}
td{
border:2px black solid;
padding:5px;
}
</style>
<script type="text/javascript">
function display_alert()
  {
  alert("確認回覆此訊息嗎?")
  }
</script>
</head>
<body>

	<%@ include file="/WEB-INF/backStageHeader.jsp" %>	
	
						
<!--=========================要放的東西  =====================-->
		<div class="container" style="padding-top:80px;padding-left:150px;width:40em;">
	<c:forEach var='con' items='${contactus}'>	
<form:form action="/Traveler/contactus/feedbackopinion/${con.pkid}" modelAttribute="contactusBean"  enctype='multipart/form-data'>
						 <fieldest>
						<table>
									
						<tr>		
						<td>姓名:
						<td id='name' path='name' type='text' value='${con.name}'>${con.name}</td>
						</tr>
						<tr>
						<td>性別:
						<td id='sex' path='sex' type='text' value='${con.sex}'>${con.sex}</td>
						</tr>
						<tr>
						<td>年齡:
						<td id='age' path='age' type='text' value='${con.age}'>${con.age}</td>
						</tr>
						<tr>
						<td>連絡電話:
						<td id='phone' path='phone' type='text' value='${con.phone}'>${con.phone}</td>
						</tr>
						<tr>
						<td>電子信箱:
						<td id='email' path='email' type='text' value='${con.email}'>${con.email}</td>
						</tr>
						<tr>
						<td>所在地:
						<td id='address' path='address' type='text' value='${con.address}'>${con.address}</td>
						</tr>
						<tr>
						<td>意見類別:
						<td id='opinion' path='opinion' type='text' value='${con.opinion}'>${con.opinion}</td>
						</tr>
						<tr>
						<td>意見欄:
					    <td cols="40" rows="5"  id="comment" path='comment' value='${con.comment}'>${con.comment}</td>
					    </tr>
					    <tr>
					    <td>回覆欄:
					    <td  colspan="6"><form:textarea cols="40" rows="5"  id="feedback" path='feedback' value='${con.feedback}'></form:textarea></td>
					   
					    </tr>
					   
						</table>
					    
               <div class='form-group'>
               	<input type="submit" id='btnAdd' class="btn btn-primary" onclick="display_alert()"
               	value="回覆"></input>
               	</div>
               
		</fieldest>
		</form:form>
		 </c:forEach>
               	
						
						
				</div>
	<!-- =========側邊欄位開始============ -->	
<div id="mwt_mwt_slider_scroll">
	<div id="mwt_slider_content"   >
		<div id="nav">			 
			 <ul >
		 		 <li>
					<a class="btn btn-primary"href="/Traveler/contactus/selectopinion"><h4><font color="white">查看留言</font></h4></a>
				 </li>
				  <li >
				   	<a class="btn btn-primary"href="/Traveler/contactus/StatisticsReport"><h4><font color="white">統計報表</font></h4></a>			   
				  </li>
			 </ul>
		</div>
	</div>
</div>
<!-- =========側邊欄位結束============ -->
	
	
	
	
	

	<!--  ========================================================== -->




	<%@ include file="/WEB-INF/backStageFooter.jsp" %>



</body>
</html>