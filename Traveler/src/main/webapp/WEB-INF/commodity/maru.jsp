<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Insert title here</title>

<style>



</style>

</head>
<body>






	<div class="container" style="padding-top:80px;padding-left:150px">

<span style="font-size:30px;">Traveler統計報表:</span>
<select id="choose" onchange="TheConfirmBox()">
	<option disabled=disabled selected=selected>請選擇</option>
<!-- 	<optgroup label="亞洲區"> -->
		<option value="http://localhost:8080/Traveler/contactus/contactuspieasia">1~3月份國人出國目的地統計</option>
		<option value="http://localhost:8080/Traveler/contactus/contactuspieage">1~3月份國人出國年齡地統計</option>
</select>
<span id="check" style="color:red;"></span><br>
<script>
	function TheConfirmBox() {
		var noteToMe;
		/*取得id為choose的選單裡剛剛所點擊的連結的名稱*/
		var whichUserChoose=choose.options[choose.selectedIndex].text;
		if (confirm("Hello！你確定要前往"+whichUserChoose+"?") == true){
			noteToMe = "你選取想前往"+whichUserChoose+"！";
			window.location.assign(choose.options[choose.selectedIndex].value);
		}else{
			noteToMe = "你按了取消喔！";
		}
		document.getElementById("check").innerHTML = noteToMe;
	}
	
</script>
</div>






</body>
</html>