<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' href='//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css' />
<title>變更密碼</title>
<hr>
<style>
table {
	padding: 1px 0 1px 0;
	border-collapse: collapse;
}
</style>
</head>

<body onload="javascript:document.changePasswordForm.oldPassword.focus();">
	<center>
		<form name="changePasswordForm" action="<c:url value='./changePwd.do' />"
			method="POST">
			<table border="0" align="center">
				<thead>
					<tr bgcolor='#F5F5F5'>
						<th height="60" colspan="2" align="center">
							<h1 align="center">會員修改密碼</h1>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr bgcolor='#F5F5F5' align="center">
						<td width="120" height="40" align="right">*會員帳號:</td>
						<td width="600" height="40" align="left">${memberId}
					</tr>
					<tr bgcolor='#F5F5F5' >
						<td width="120" height="40" align="right">*舊密碼:</td>
						<td width="600" height="40" align="left"><input id='oldPassword'
							style="text-align: left" name="oldPassword" type="password" size="30"
							placeholder="至少6個字須含英文、數字、特殊字元"> <!--                              	     <p>(1.不可空白，2.至少6個字且必須包含英文字母、數字、特殊字元[!@#$%^&*])</p> -->
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.oldPassword}</div>
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*密碼:</td>
						<td width="600" height="40" align="left"><input id='password'
							style="text-align: left" name="password" type="password" size="30"
							placeholder="至少6個字須含英文、數字、特殊字元"> <!--                              	     <p>(1.不可空白，2.至少6個字且必須包含英文字母、數字、特殊字元[!@#$%^&*])</p> -->
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.password}</div>
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*確認密碼:</td>
						<td width="600" height="40" align="left"><input
							id='chkPassword' style="text-align: left" name="chkPassword" type="password" size="30">
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.chkPassword}</div>
						</td>
					</tr>
					<br>
					<tr bgcolor='#F5F5F5'>
						<td height="50" colspan="2" align="center">
						<a href="<spring:url value='member/memberIndex'/>" class="btn btn-default">
							<span class="glyphicon-hand-left glyphicon"></span>首頁
							</a>
							<input
							type="submit" value="送出">
						</td>
					</tr>

				</tbody>
			</table>
		</form>
	</center>
</body>

</html>