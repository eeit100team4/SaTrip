<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' href='//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css' />
<title><c:choose>
		<c:when test="${function == 'add'}">加入會員</c:when>
		<c:when test="${function == 'update'}">${welcomeNm} 會員資料更新</c:when>
		<c:otherwise>麥來亂</c:otherwise>
	</c:choose></title>
<hr>
<style>
table {
	padding: 1px 0 1px 0;
	border-collapse: collapse;
}
</style>
</head>

<body onload="javascript:document.insertMemberFormA.mId.focus();">
	<center>
		<!-- <form name="insertMemberFormA" action="member.do" method="POST"> -->
		<form name="insertMemberFormA" action="<c:url value='./saveMember.do' />"
			method="POST" enctype="multipart/form-data">
			<input type="hidden" name="function" value="${function}">
			<table border="0" >
				<thead>
					<tr bgcolor='#F5F5F5'>
						<th height="60" colspan="2" align="center">
							<c:choose>
								<c:when test="${function == 'add'}"><h1 >註冊會員</h1></c:when>
								<c:when test="${function == 'update'}"><h1 align="center">${welcomeNm} 會員資料更新</h1></c:when>
								<c:otherwise><h1 align="center">會員基本資料</h1></c:otherwise>
							</c:choose>
						</th>
					</tr>
				</thead>
				<tbody>
				<c:if test="${function == 'update'}">
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right"></td>
						<td width="600" height="40" align="left">
							<div style="color: #ff0000; font-size =60%; display: inline;">${xxx}</div>
						</td>
					</tr>
				</c:if>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*會員帳號:</td>
						<td width="600" height="40" align="left">
							<c:choose>
								<c:when test="${function == 'update'}">${welcomeNm}</c:when>
								<c:otherwise>
									<input id='num' style="text-align: left" name="memberId" value="${param.memberId}" type="text" size="14" placeholder="請輸入身份證字號">
									<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.memberId}</div>
								</c:otherwise>
							</c:choose>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*性別:</td>
						<td width="600" height="40" align="left"><select
							name="gender" style="text-align: left">
								<option value="" ${(function == 'add')?"selected":""}>請選擇</option>
								<option value="male" ${(member.gender == 'male')?"selected":""}>男</option>
								<option value="female" ${(member.gender == 'female')?"selected":""}>女</option>
						</select>
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.gender}</div>
						</td>
					</tr>
					<c:if test="${function == 'add'}">
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*密碼:</td>
						<td width="600" height="40" align="left"><input id='password'
							style="text-align: left" name="password"
							value="${param.password}" type="password" size="30"
							placeholder="至少6個字須含英文、數字、特殊字元"> <!--                              	     <p>(1.不可空白，2.至少6個字且必須包含英文字母、數字、特殊字元[!@#$%^&*])</p> -->
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.password}</div>
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*確認密碼:</td>
						<td width="600" height="40" align="left"><input
							id='chkPassword' style="text-align: left" name="chkPassword"
							value="${param.chkPassword}" type="password" size="30">
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.chkPassword}</div>
						</td>
					</tr>
					</c:if>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*出生年月日:</td>
						<td width="600" height="40" align="left"><input
							name="birthday" value="${(function == 'add')?param.birthday:member.birthday}" type="text" size="14"
							placeholder="格式為yyyy/MM/dd"> <!--                                     <font color='blue' size="-1">&nbsp;&nbsp;格式為yyyy/MM/dd</font> -->
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.birthday}</div>
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">護照姓名:*中文</td>
						<td width="600" height="40" align="left"><input
							name="chineseLastName" value="${(function == 'add')?param.chineseLastName:member.chineseLastName}"
							type="text" size="20" placeholder="姓"> <input
							name="chineseFirstName" value="${(function == 'add')?param.chineseFirstName:member.chineseFirstName}"
							type="text" size="20" placeholder="名"> <br>英文<input
							name="englishLastName" value="${(function == 'add')?param.englishLastName:member.englishLastName}"
							type="text" size="20" placeholder="姓Last Name"> <input
							name="englishFirstName" value="${(function == 'add')?param.englishFirstName:member.englishFirstName}"
							type="text" size="20" placeholder="名First Name">
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.name}</div>
						</td>
					</tr>


					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*聯絡Email:</td>
						<td width="600" height="40" align="left"><input name="email"
							value="${(function == 'add')?param.email:member.email}" type="text" size="30">
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.email}</div>
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*手機:</td>
						<td width="600" height="40" align="left"><input name="mobile"
							value="${(function == 'add')?param.mobile:member.mobile}" type="text" size="30">
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.mobile}</div>
						</td>
					</tr>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">市話:</td>
						<td width="600" height="40" align="left"><input
							name="phoneNumber" value="${(function == 'add')?param.phoneNumber:member.phoneNumber}" type="text"
							size="30">
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.phoneNumber}</div>
						</td>
					</tr>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">地址:</td>
						<td width="600" height="40" align="left"><input
							name="address" value="${(function == 'add')?param.address:member.address}" type="text" size="50">
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.address}</div>
						</td>
					</tr>
<!-- 					<div class="form-group"> -->
<!-- 						<div class='col-lg-10'> -->
<!-- 						<label class='control-label col-lg-2 col-lg-2' for="memberImage"> -->
<%-- 						<spring:message code='spring.addMember.form.image.label'/> --%>
<!-- 			            </label> -->
<!-- 			            <form:input id="memberImage" path="memberImage" type='file' -->
<!-- 			            	class='form:input-Large'/> -->
<!-- 			            </div> -->
<!-- 			        </div> -->
<!-- 					<tr bgcolor='#F5F5F5'> -->
<!-- 						<td height="50" colspan="2" align="center"><input -->
<!-- 							type="submit" value="送出"></td> -->
<!-- 					</tr> -->
						<tr bgcolor='#F5F5F5'>
							<td height="50" colspan="2" align="center">
							
							<c:choose>
								<c:when test="${function == 'add'}">
								<a href="<spring:url value='/'/>" class="btn btn-default">
								<span class="glyphicon-hand-left glyphicon"></span>首頁
								</a>
								</c:when>
								<c:when test="${function == 'update'}">
								<a href="<spring:url value='./memberIndex'/>" class="btn btn-default">
								<span class="glyphicon-hand-left glyphicon"></span>首頁
								</a>
								</c:when>
								<c:otherwise><h1 align="center">會員基本資料</h1></c:otherwise>
							</c:choose>
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