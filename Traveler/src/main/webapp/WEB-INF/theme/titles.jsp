<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<!--從首頁點選主題旅遊時產生的頁面 -->
</head>
<body>
<ul class="fh5co-sub-menu">
<!-- 加一行 -->
</ul>
<div style="text-align:center">
 <h1>請挑選<h1>
  <c:forEach var='titleName' items='${titleList}'>
     <img src="/Traveler/images/themeTitle-${titleName}.png">
     <a href="products/${titleName}">${titleName}</a><br>
     <br>
  </c:forEach>
</div>
</body>
</html>