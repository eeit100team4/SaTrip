<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>
<html>
<head>

<title>資料修改資料成功</title>
</head>
<body>
<div  style="margin:auto" align="center">
<h1>會員資料修改成功</h1>

<Font color='blue' >親愛的 ${chineseLastName}${chineseFirstName} 會員您好，您輸入的資料已經成功修改完畢</font>
<br><h3>
<a href="<spring:url value='/'/>" class="btn btn-default">
	<span class="glyphicon-hand-left glyphicon"></span>
	回首頁	</a></h3>
<br>
</div>
</body>
</html>