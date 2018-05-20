<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>themeTitles</title>
<!--從首頁點選主題旅遊時產生的頁面 -->
</head>
<body>
<ul class="fh5co-sub-menu">
<!-- 加一行 -->
</ul>
<div>
 <c:forEach var='theme' items='${themeTitles}'>
  <div style="width:300px; height:200px; float: left; ">
    <img src="/Traveler/images/themeTitle-${theme.titleId}.png">
    <p>
    <b style='font-size:16px;'>${theme.titleName}</b>
    </p>
  </div>
 </c:forEach>
</div>
</body>
</html>
