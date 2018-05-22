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
<!-- 聯絡表單 -->
<link href="/Traveler/css/bootstrap.min.css" rel="stylesheet">

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
<!-- <script src="/Traveler/js/magnific-popup-options.js"></script> -->
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

<!-- 聯絡表單 -->
<!-- jQuery -->
<script src="/Traveler/js/jquery-1.11.0.min.js"></script>
<!-- Twitter Boostrap -->
<script src="/Traveler/js/bootstrap.min.js"></script>
<!-- zip2addr plugin -->
<script src="/Traveler/js/jquery.zip2addr.js"></script>
<script>
 $(function(){
	 //jQuery validation Plugin 的Twitter BootStrap3對應
// 	 $.validator.setDefaults({
// 		 highlight:function(element){
// 			 $(element).closest('.form-group').addClass('has-error');
// 		 },
// 		 errorElement:  'span',
// 		 errorClass:   'help-block',
// 		 errorPlacement: function(error, element){
// 			 if(element.parent('.controls').length){
// 				 error.insertAfter(element.parent());
// 			 }else{
// 				 error.insertAfter(element);
// 			 }
// 		 }
// 	 });
	// jQuery Validation Plugin的套用
// 		$('#form').validate({
// 			/**
// 			 * validate 規則設定
// 			 */
// 			rules: {
// 				name:     "required",
// 				gender:    "required",
// 				cellPhone:    "required",
// 				people:    "required",
// 				callTime:    "required",
// 				location:    "required",
// 				extra:    {
// 					maxlength: 500
// 				}
			  
// 			},
// 			/**
// 			 * validate 訊息設定
// 			 */
// 			messages: {
// 				name:     "請輸入姓名。",
// 				gender:     "請選擇稱謂。",
// 				cellPhone:     "請輸入電話。",
// 				people:     "請選擇人數。",
// 				callTime:     "請選擇可連絡時段。",
// 				location:     "請選擇服務據點。",				
// 				extra:     {
// 					maxlength: jQuery.format("備註事項請輸入 {0} 字以内。")
// 				},
// 			}
		
//  });
 });
</script>
</head>
<body>
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>
<div class="container">
			<div class="row">
				<div class="col-sm-offset-3 span9">
					<h1>主題旅遊報名申請</h1>             
                    <br>
				</div>
			</div>
		</div>	
		
<div class="container">
 <div class="row">
  <div class="span12">

    <!-- 程式碼開始 -->
    <form:form method="POST" modelAttribute="application" class="form-horizontal" role="form" id="form" >
<div class="form-group">
 <label for="name" class="col-sm-3 control-label">聯絡人姓名</label>
  <div class="col-sm-3 controls">
   <input type="text" id="name" name="name" placeholder="例:王大明" class="form-control">
  </div>
  
  <b style='font-size:16px;'>&nbsp;&nbsp;&nbsp;&nbsp;${test.themeProducts.productName}</b>

</div>
<div class="form-group">
 <label for="gender" class="col-sm-3 control-label">稱謂</label>
  <div class="col-sm-3 controls">
   <input type="text" id="gender" name="gender" placeholder="先生、小姐" class="form-control">
  </div>
  
  <b style='font-size:16px;'>&nbsp;&nbsp;&nbsp;&nbsp;國家:${test.themeProducts.country}</b>

</div>
<div class="form-group">
 <label for="cellPhone" class="col-sm-3 control-label">連絡電話</label>
  <div class="col-sm-3 controls">
   <input type="text" id="cellPhone" name="cellPhone" placeholder="例:0912345678" class="form-control">
  </div>
  
  <b style='font-size:16px;'>&nbsp;&nbsp;&nbsp;&nbsp;出發日期:<fmt:formatDate value="${test.setOut}" pattern="yyyy/MM/dd" /></b>

</div>
<div class="form-group">
 <label for="people" class="col-sm-3 control-label">人數</label>
  <div class="col-sm-3 controls">
   <input type="text" id="people" name="people" placeholder="1-20人" class="form-control">
  </div>
  
  <b style='font-size:16px;'>&nbsp;&nbsp;&nbsp;&nbsp;返回日期:<fmt:formatDate value="${test.returnDay}" pattern="yyyy/MM/dd" /></b>

</div>
<div class="form-group">
 <label for="callTime" class="col-sm-3 control-label">可連絡時段</label>
  <div class="col-sm-3 controls">
   <input type="text" id="callTime" name="callTime" placeholder="早上、下午、晚上" class="form-control">
  </div>
  
  <b style='font-size:16px;'>&nbsp;&nbsp;&nbsp;&nbsp;航空公司:${test.companyName}</b>

</div>
<div class="form-group">
 <label for="location" class="col-sm-3 control-label">服務據點</label>
  <div class="col-sm-3 controls">
   <input type="text" id="location" name="location" placeholder="台北、台中、高雄" class="form-control">
  </div>
  
  <b style='font-size:16px;'>&nbsp;&nbsp;&nbsp;&nbsp;標準團費:${test.price}</b>
  
</div>
<div class="form-group">
 <label for="extra" class="col-sm-3 control-label">備註事項</label>
  <div class="col-sm-6 controls">
   <textarea class="form-control" rows="3" id="extra" name="extra" placeholder="請輸入500字以內"></textarea>
  </div>
</div>
<div class="form-group">
 <div class="col-sm-offset-3 col-sm-6">
  <button type="submit" class="btn" btn-primary btn-lg btn-block">送出報名表</button>
 </div>
</div>
     </form:form>
   
  </div>
 </div>
</div>

	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>
</html>