<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>	    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
	integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
	integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>

	<table class="table table-hover table-bordered">
				<thead >
					<tr>
						<th scope="col">訂單編號</th>
						<th scope="col">會員姓名</th>			
						<th scope="col">兌換商品</th>
						<th scope="col">兌換數量</th>
						<th scope="col">兌換點數</th>
						<th scope="col">收件人姓名</th>
						<th scope="col">收件人地址</th>
						<th scope="col">收件人電話</th>
						<th scope="col">兌換時間</th>
					</tr>
				</thead>
				<tbody>                           
					<c:forEach var='cli' items='${ClientLists}'>
						<tr>
							<td>${cli.id}</td>				
							<td>${cli.memberBean.chineseLastName}${cli.memberBean.chineseFirstName}</td>			
							<td>${cli.commodityBean.name}</td>
							<td>${cli.cliquantity}</td>
							<td>${cli.point}</td>
							<td>${cli.clientname}</td>
							<td>${cli.clientaddr}</td>
							<td>${cli.clienttel}</td>
							<td>${cli.date}</td>
						</tr>

					</c:forEach>
				</tbody>
			</table>









</body>
</html>