<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>
<html>
<head>

<title>修改資料成功</title>
</head>
<body class='center'>
<h1 >會員修改資料成功</h1>

<Font color='blue' >親愛的 ${param.chineseLastName}${param.chineseFirstName} 會員您好，您輸入的資料已經修改完畢</font>

<a href="<spring:url value='./memberIndex'/>" class="btn btn-default">
	<span class="glyphicon-hand-left glyphicon"></span>
	會員首頁	</a>


<div>
<br>

</div>
</body>
</html>