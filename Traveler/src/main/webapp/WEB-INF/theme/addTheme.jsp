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
		<form:form method="POST" modelAttribute="themeBean" enctype="multipart/form-data" >
		   <fieldset>
				<label>新增主題名稱</label>
				<form:input  path="titleName" type="text" />		
						
				<br>
				<label>新增主題圖片</label>
				<form:input  path="titleImage" type="file"  />			
													
				<div>					
				<input type="submit" value="送出" />
				</div>
			</fieldset>
		</form:form>		
	</section>
</body>
</html>