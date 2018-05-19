<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查詢密碼</title>
<style type="text/css">
#main {
	position: relative;
	top: 50px;
	width: 100%;
	text-align: center;
}

#content {
	width: 500px;
	margin-left: auto;
	margin-right: auto;
}
</style>
<script type="text/javascript">
	//由<body>的onLoad事件處理函數觸發此函數
	function setFocusToUserId() {
		document.forms[0].userId.focus(); // 將游標放在userId欄位內
	}
</script>
</head>
<body onLoad="setFocusToUserId()" style="background: #EBFFEB;">
	<!-- 下列敘述設定變數funcName的值為LOG，top.jsp 會用到此變數 -->
	<c:set var="funcName" value="LOG" scope="session" />
	<c:set var="msg" value="查詢密碼" />
	<Form name="queryPwdForm" action="<c:url value='./queryPwd.do'/>" method="POST">
		
		<div id='content'>
			<Table width='500px'
				style="border-width: 2; background: #E0E0E0; border-style: inset; border-color: #EF02A4;">
				<TR>
					<TH width="180">&nbsp;</TH>
					<TH width="180">&nbsp;</TH>
				</TR>
				<TR>
					<TD colspan='2' align="CENTER"
						style="font-size: 0.6cm; font-weight: 300;"><Font
						color="#006600" face="標楷體"> ${AppName} </Font></TD>
				</TR>
				<TR>
					<TD height='50' colspan='2' align="CENTER"
						style="font-size: 0.8cm; font-weight: 300;"><Font
						color="#006600" face="標楷體"> ${msg} </Font></TD>
				</TR>
				<TR height='10'>
					<TD align="CENTER" colspan='2'>&nbsp;</TD>
				</TR>
				<TR>
					<TD width="180" align="right">*帳號：</TD>
					<TD width="180" colspan='2' align="LEFT"><input type="text"
						name="memberId" size="16" placeholder="請輸入身份證字號"> <%--              value="${sessionScope.memberId}"> --%>

						&nbsp;<small><Font color='red' size="-3">${ErrorMsgMap.AccountEmptyError}</Font></small></TD>
				</TR>
				<TR>
					<TD width="180" align="right">*出生年月日：</TD>
					<TD width="180" colspan='2' align="LEFT"><input
						type="text" name="birthday" size="16"
						placeholder="格式為yyyy/MM/dd"> <%--              value="${sessionScope.password}"> --%>

						&nbsp;<small><Font color='red' size="-3">${ErrorMsgMap.ErrorMsg}</Font></small></TD>

				</TR>
				<TR height='10'>
					<TD align="CENTER" colspan='2'>&nbsp;<Font color='red'
						size="-1">${ErrorMsgMap.ErrorMsg}&nbsp;</Font></TD>
				</TR>
				<TR>
					<TD colspan="2" align="center"><input type="submit" value="確認送出">
					</TD>
				</TR>
				<TR height='10'>
					<TD align="CENTER" colspan='2'>&nbsp;</TD>
				</TR>
			</Table>
				<p style="padding:center;">【確認送出】後，網站將寄送一組新密碼於您原登錄的e-mail。</p>
		</div>
	</Form>
</body>
</html>