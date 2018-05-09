<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />
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
}

.d1 {
	background-color: #FF8800;
	width: 20%;
	height: 630px;
	float: left;
}

.d2 {
	background-color: #FFFFFF;
	width: 80%;
	height: 630px;
	float: right;
}
.d3 {
	border:5px solid LightGray;	
	margin:20px;
	padding:20px;
	border-radius:25px;
}



</style>


</head>
<body>
<div id="allpage">
		<header> <nav>
		<ul class="menu">
		<li cless="le"><a href="index.html"><img src='images/icon_index.png' height="25px" width="25px"/>TRAVEL後台管理系統</a></li>
					<li><a href="index.html"><img src='images/icon_air.png' height="25px" width="25px"/>機票管理</a></li>
					<li><a href="index.html"><img src='images/icon_hotel.png' height="25px" width="25px"/>飯店管理</a></li>
					<li><a href="index.html"><img src='images/icon_traveler.png' height="25px" width="25px"/>主題旅遊管理</a></li>
					<li><a href="index.html"><img src='images/icon_vip.png' height="25px" width="25px"/>會員管理</a></li>
					<li><a href="index.html"><img src='images/icon_comm.png' height="25px" width="25px"/>紅利管理</a></li>
					<li><a href="index.html"><img src='images/icon_support.png' height="25px" width="25px"/>客服管理</a></li>
					<li><a href="index.html"><img src='images/icon_logout.png' height="25px" width="25px"/>登出</a></li> <!--登入-->
			<!--登出-->
		</ul>

		</nav> </header>


	<div class="row no-gutters">
	
	<div class="d1">
			<h2 style="text-align: center">紅利管理</h2>
			<ul class="me">
				<li><a href="commlist">商品清單</a></li>
				<li><a href="tsuika">新增商品訂單</a></li>
                <li><a href="henkou">修改商品</a></li>
			</ul>
		</div>

	<div class="d2">
<!-- 		<div class="col-12 col-sm-6 col-md-8"> -->
			<div class="container">
<!-- 				<div class="form-row"> -->
					<div class="d3">
						<form:form method='POST' action='/Traveler/add'
							modelAttribute="CommodityBean" enctype="multipart/form-data">
							<legend>新增產品資訊</legend>
							
							<div class="form-group">
								<label for='name'>產品名:</label>
								<form:input type="text" class="form-control" id="name"
									path='name' />
								<small id="name" class="form-text text-muted"></small>
							</div>
							
							<div class="form-group">
								<label for='quantity'>數量:</label>
								<form:input type="text" class="form-control" id="quantity"
									path='quantity' />
								<small id="quantity" class="form-text text-muted"></small>
							</div>
							
							<div class="form-group">
								<label for='price'>價格:</label>
								<form:input type="text" class="form-control" id="price"
									path='price' />
								<small id="price" class="form-text text-muted"></small>
							</div>
							
							<div class="form-group">
								<label for='point'>點數:</label>
								<form:input type="text" class="form-control" id="point"
									path='point' />
								<small id="point" class="form-text text-muted"></small>
							</div>
							
							<div class="form-group">
								<label for='kind'>種類:</label>
								<form:select path="kind">
									<form:option value="電影" lable="" />
									<form:option value="海洋" lable="" />
									<form:option value="樂園" lable="" />
									<form:option value="禮券" lable="" />
									<form:option value="動畫" lable="" />
								</form:select>
							</div>
							
							
							<div class="form-group">
								<label for="productImage">圖片</label>
								<form:input id="productImage" path="productImage" type='file' />
							</div>
							
							
							<button type="submit" class="btn btn-primary" id='btnAdd'>送出</button>
						</form:form>
					</div><!-- d1 --> 
				 <!-- </div>  form-row -->   
			</div> <!-- container -->
		<!--</div>  col-12 col-sm-6 col-md-8 -->
	</div>  <!-- row no-gutters -->
</div>

	<footer>
		<p>TRAVEL &nbsp; Tel:(02)2222-8888 &nbsp; 台北市復興南路一段390號 &nbsp;
			&copy; 2014 All Rights Reserved Quality Art Technology CO.</p>
		</footer>
	
</body>
</html>