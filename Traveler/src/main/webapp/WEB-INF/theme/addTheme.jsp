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
			<h1 style="text =align: center">主題維護</h1>
		</div>
	</section>

	<hr width='3'>

	<section>
		<fieldset>
			<form:form method="POST" modelAttribute="themeBean">

				<label>add theme</label>
				<form:input type="text" path="titleName" />
				<input type="submit" value="enter" />
			</form:form>
		</fieldset>
	</section>
</body>
</html>