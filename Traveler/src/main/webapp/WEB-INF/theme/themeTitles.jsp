<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>themeTitles</title>
<!--從首頁點選主題旅遊時產生的頁面 -->

</head>
<body>
<ul class="fh5co-sub-menu">
<!-- 加一行 -->
<li><a href='/Traveler/theme/addTheme'>新增主題</a></li>
</ul>
<div>
 <c:forEach var='theme' items='${themeTitles}'>
  <div style="width:300px; height:200px; float: left; ">
    <img src="../images/1-${theme.titleId}.png">
    <p>
    <b style='font-size:16px;'>${theme.titleName}</b>
    </p>
 </div>
 </c:forEach>
</div>

</body>
</html>