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
<h1>會員查詢密碼成功</h1>

<Font color='blue' >親愛的 ${param.memberId}會員您好
	<br>Traveler已經成功發送新密碼於您的註冊mail中，您可取得新密碼後於本網重新登入並更改密碼，感謝您的蒞臨。</font>
<br><h3>
<a href="<spring:url value='/'/>" class="btn btn-default">
	<span class="glyphicon-hand-left glyphicon"></span>
	Traveler</a></h3>
<br>
</div>
</body>
</html>