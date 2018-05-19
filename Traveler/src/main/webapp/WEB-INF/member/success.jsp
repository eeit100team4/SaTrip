<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>
<html>
<head>

<title>register</title>
</head>
<body class='center'>
<h1 >會員新增成功</h1>

<Font color='blue' >親愛的 ${param.chineseLastName}${param.chineseFirstName} 會員您好，您輸入的資料已經處理完畢</font>
<h2>感謝您加入成為會員請至
<a href="<spring:url value='/member/memberIndex'/>" class="btn btn-default">
	<span class="glyphicon-hand-left glyphicon"></span>
	首頁	</a>開始使用本系統<h2>


<div>
<br>

</div>
</body>
</html>