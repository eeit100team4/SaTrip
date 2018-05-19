<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' href='//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css' />
<title>Members</title>
<hr>
<style>
table {
	padding: 1px 0 1px 0;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<section>
	<div class="jumbotron">
		<div class="container" style="text-align:center">
			<h2>會員清單</h2>
			<p>本網站所有會員資料</p>
		</div>
	</div>
	</section>
	<section class="container" >
	<div class="row">
		<c:forEach var='member' items='${members}'>
			<div class="col-sm-6 col-md-3" style="width: 360px; height: 500px">
				<div class="thumbnail" style="width: 320px; height: 300px">
					<img width='100 height='200'
					  src="<c:url value='/member/getPicture/${member.memberId}'/>"/>
					
					<div class="caption">
						<p>
							<b style='font-size: 16px;'>${member.chineseLastName}${member.chineseFirstName}</b>
						</p>
						<p>會員帳號：${member.memberId}</p>
						<p>會員手機：${member.mobile}</p>
						<p>會員紅利：${member.point}</p>
						<p>
						<a href="<spring:url value='./member?memberId=${member.memberId}'/>"
						class="btn btn-primary"><span
						class="glyphicon-info-sigh glypicon"></span>詳細資料</a>
						</p>
						
					</div>
				</div>
			</div>
		</c:forEach>
			<a href="<spring:url value='./memberIndex'/>" class="btn btn-default">
				<span class="glyphicon-hand-left glyphicon"></span>上一頁
			</a>
	</div>
	</section>
</body>
</html>