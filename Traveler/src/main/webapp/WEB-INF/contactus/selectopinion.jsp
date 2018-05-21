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
	
	
<title>Insert title here</title>

<style>
        
* {
	margin: 0;
	padding: 0;
}

/* #allpage { */
/* 	margin: 0 auto; */
/* } */

.menu {
	overflow: auto;
	width: 100%;
	list-style-type: none;
	background-color: #FF8800;
	border-bottom: 3px solid #cccccc;
}

.me {
	overflow: auto;
	width: 100%;
	list-style-type: none;


}

.menu li {
	float: left;
	width: 11em;
	/*為了讓連結區域能依字型大小的變化自動放大,因此在指定width屬性時採用em為單位*/
	border-right: 1px solid #cccccc;
}

.me li {
	float: left;
    width: 15em; 
	/*為了讓連結區域能依字型大小的變化自動放大,因此在指定width屬性時採用em為單位*/
	
}

.menu li a {
	display: block;
	width: 100%;
	line-height: 3em;
	/*讓文字上下空出適當的空白,不用padding屬性,直接將行Box的高度設的高一些*/
	color: #333333;
	text-decoration: none;
	text-align: center;
}

.me li a {
	display: block;
	width: 100%;
	line-height: 3em;
	/*讓文字上下空出適當的空白,不用padding屬性,直接將行Box的高度設的高一些*/
	color: #333333;
	text-decoration: none;
	text-align: center;
}

 .menu li a:hover { 
	color: #FFFFFF; 
 	background-color: #AA7700; 
 } 
  .me li a:hover { 
	color: #FFFFFF; 
 	background-color: #AA7700; 
 }


/* .content { */
/* 	overflow: auto; */
/* 	width: 100%; */
/* 	padding-bottom: 20px; */
/* } */

/* aside { */
/* 	float: right; */
/* 	width: 20%; */
/* } */

.list1 {
	list-style: decimal inside;
}



footer {
	width: 100%;
	clear: both;
	line-height: 2.5em;
	text-align: center;
	color: #ffffff;
	background-color: #FFBB00;
	/*             border-bottom-right-radius: 15px; */
	/*             border-bottom-left-radius: 15px; */
}

.d1 {
	background-color: #FF8800;
	width: 20%;
	height:630px;
	float:left;
}

.d2{
background-color: #FFFFFF;
width: 70%;
height:630px;
float:right;
}
/* table{ */
/* border:1px solid black; */
/* } */
</style>



</head>
<body>
	<div id="allpage">
		<header>		
		 <nav>		
		<ul class="menu">
	    	<li cless="le"><a href="index.html"><img src='/Traveler/images//icon_index.png' height="25px" width="25px"/>TRAVEL後台管理系統</a></li>
					<li><a href="airTickets/back/list"><img src='/Traveler/images//icon_air.png' height="25px" width="25px"/>機票管理</a></li>
					<li><a href="index.html"><img src='/Traveler/images//icon_hotel.png' height="25px" width="25px"/>飯店管理</a></li>
					<li><a href="index.html"><img src='/Traveler/images//icon_traveler.png' height="25px" width="25px"/>主題旅遊管理</a></li>
					<li><a href="index.html"><img src='/Traveler/images//icon_vip.png' height="25px" width="25px"/>會員管理</a></li>
					<li><a href="commlist"><img src='/Traveler/images//icon_comm.png' height="25px" width="25px"/>紅利管理</a></li>
					<li><a href="feedbackopinion"><img src='/Traveler/images//icon_support.png' height="25px" width="25px"/>客服管理</a></li>
					<li><a href="index.html"><img src='/Traveler/images//icon_login.png' height="25px" width="25px"/>登入</a></li> <!--登出-->
		</ul>

		</nav> </header>
	
<div class="d1"> 
<h2 style="text-align:center">客服管理</h2>
<ul class="me">
<li><a href="selectopinion">查看留言</a></li>
<li><a href="feedbackopinion">回覆留言</a></li>
<li><a href="StatisticsReport">統計報表</a></li>
<li><a href="contactuspieasia"></a>
<li><a href="contactuspieage"></a>



</ul>

		</div>
		
		
		
		
		
<div class="d2">		
				<form action="feedbackopinion" modelAttribute="contactusBean"  enctype='multipart/form-data'>
						 <fieldest>
<!-- 						 <div class='form-group'> -->
<!-- 						 <label for='name'>姓名:</label> -->
<%-- 						 <form:input id='name' path='name' type='text' value='${aa.name}'/> --%>
<!-- 						 </div> -->
<!-- 						 <div class='form-group'> -->
<!-- 						 <label for='sex'>性別:</label> -->
<%-- 						 <form:input id='sex' path='sex' type='text' value='${aa.sex}'/> --%>
<!-- 						 </div> -->
<!-- 						 <div class='form-group'> -->
<!-- 						 <label for='age'>年齡:</label> -->
<%-- 						 <form:input id='age' path='age' type='text' value='${aa.age}'/> --%>
<!-- 						 </div> -->
<!-- 						 <div class='form-group'> -->
<!-- 						 <label for='phone'>連絡電話:</label> -->
<%-- 						 <form:input id='phone' path='phone' type='text' value='${aa.phone}'/> --%>
<!-- 						 </div> -->
<!-- 						 <div class='form-group'> -->
<!-- 						 <label for='email'>電子信箱:</label> -->
<%-- 						 <form:input id='email' path='email' type='text' value='${aa.email}'/> --%>
<!-- 						 </div> -->
<!-- 						 <div class='form-group'> -->
<!-- 						 <label for='address'>所在地:</label>						  -->
<%-- 						 <form:input id='address' path='address' type='text' value='${aa.address}'/> --%>
<!-- 						 </div> -->
<!-- 						 <div class="form-group"> -->
<!-- 								<label for='opinion'>意見類別:</label> -->
<%-- 								<form:input id='opinion' path='opinion' type='text' value='${aa.opinion}'/> --%>
<!-- 							</div> -->
<!-- 							<div class='form-group'> -->
<!-- 						<label for='comment'>意見欄:</label> -->
<%-- 						<form:input cols="40" rows="5"  id="comment" path='comment' value='${aa.comment}'></form:input> --%>
<!-- 						</div> -->
						<table>
						<tr>
						
<!-- 						<td><label for='name'>姓名:</label> -->
						<p id='name'type='text' value='${aa.name}'/>姓名:${aa.name}</td>
						</tr>
						<tr>
<!-- 						<td><label for='sex'>性別:</label> -->
						<p id='sex' type='text' value='${aa.sex}'/>性別:${aa.sex}</td>
						</tr>
						<tr>
<!-- 						<td><label for='age'>年齡:</label> -->
						<p id='age' type='text' value='${aa.age}'/>年齡:${aa.age}</td>
						</tr>
						<tr>
<!-- 						<td><label for='phone'>連絡電話:</label> -->
						<p id='phone'  type='text' value='${aa.phone}'/>連絡電話:${aa.phone}</td>
						</tr>
						<tr>
<!-- 						<td><label for='email'>電子信箱:</label> -->
						<p id='email' type='text' value='${aa.email}'/>電子信箱:${aa.email}</td>
						</tr>
						<tr>
<!-- 						<td><label for='address'>所在地:</label> -->
						<p id='address' type='text' value='${aa.address}'/>所在地:${aa.address}</td>
						</tr>
						<tr>
<!-- 						<td><label for='opinion'>意見類別:</label> -->
						<p id='opinion'type='text' value='${aa.opinion}'/>意見類別:${aa.opinion}</td>
						</tr>
						<tr>
						<td>
<!-- 					    <label for='comment'>意見欄:</label>  -->
					    <p cols="40" rows="5"  id="comment"  value='${aa.comment}'>意見欄:${aa.comment}</p>
					    </td>
					    </tr>
					    <tr>
					    <td>
					     <label for='feedback'>回覆欄:</label>
					    <p cols="40" rows="5"  id="feedback"  value='${aa.feedback}'></p>
						</td>
						</tr>
						</table>
					    
		</fieldest>
		</form>
               	
						
						
						
</div>
		
		<footer>
		<p>TRAVEL &nbsp; Tel:(02)2222-8888 &nbsp;
			台北市復興南路一段390號 &nbsp; &copy; 2014 All Rights Reserved Quality Art
			Technology CO.</p>
		</footer>
	</div>
</body>

</html>