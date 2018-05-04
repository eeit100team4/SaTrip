<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addTheme</title>
</head>
<body>

<section>
<div>
      <h1 style="text=align:center">主題維護</h1>
</div>
</section>

<hr width='3'>

<section>
      <form:form method='POST' modelAttribute="ThemeBean">
<fieldset>
      <legend>新增主題</legend>
<div>
      <label for='titleName'>主題名稱</label>
<div>
      <form:input id="titleName" path="titleName" type='text'/>
</div>
</div>

<div>
      <input id="btnAdd" type='submit' value="送出"/>
</div>
</fieldset>
</form:form>
</section>
</body>
</html>