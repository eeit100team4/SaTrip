<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet'
	href='//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css' />
<title>Member</title>
<hr>
<style>
table {
	padding: 1px 0 1px 0;
	border-collapse: collapse;
}


.dd{
 width: 300px;
    margin: auto;


}
</style>
</head>
<body>
	<section>
	<div class="jumbotron" >
		<div class="container" style="text-align:center">
			<h2>會員資料</h2>
		</div>
	</div>
	</section>
<!-- 	<section class="container"  > -->
	<div  >

		<div class="dd">

			<h3>${member.chineseLastName}${member.chineseFirstName}</h3>
			<p>帳號：${member.memberId}</p>
			<p>生日：${member.birthday}</p>
			<p>手機：${member.mobile}</p>
			<p>mail：${member.email}</p>
			<p>紅利：${member.point}</p>
			<a href="<spring:url value='./members'/>" class="btn btn-default">
				<span class="glyphicon-hand-left glyphicon"></span>返回
			</a>
		</div>
	</div>
	<%-- 		</c:forEach> --%> 
<!-- 	</section> -->
</body>
</html>