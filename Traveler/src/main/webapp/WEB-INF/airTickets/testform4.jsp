<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

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


<script>
	$(document).ready(function() {
		//alert("ok");

// 		var formElement = document.querySelector("form");
// 		request.send(new FormData(formElement));

		$('#myform').submit(function() {
// 			var data = new FormData($("#myform"));
			var data = new FormData(document.querySelector("form"));
			console.log(data);
			$.ajax({
				url : 'guest',
				type : 'POST',
				data : data,
				//enctype: "multipart/form-data",
				contentType : false,
				processData : false,
				success : function(responce) {
					alert(responce);
					alert("ok");
					window.location.href = "http://tw.yahoo.com"
				},
				error:function(){
					alert("error");
				}

			});

		});
	});
</script>

<body>

	<div>
		<form id="myform" method="post" enctype="multipart/form-data">
			<p>旅客一</p>
			<label>中文姓</label> <input type="text" name="chineseFirstpath_1" />
			 <input	type="submit" id="submit"  />送出
		</form>
	</div>

</body>
</html>