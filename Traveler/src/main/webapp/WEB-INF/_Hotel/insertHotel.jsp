<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<style type="text/css">
fieldset {
	border: 1px solid rgb(255, 232, 57);
	width: 400px;
	margin: auto;}
</style>
<title>insertHotel</title>
</head>
<body>
		<section>
		<div class="container">
			<h1 style="text-align: center">
			<spring:message code='spring.addProduct.form.addProductData.label' />
			</h1>
		</div>
	</section>
	<hr style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">
		<!--       三個地方要完全一樣 -->
		<form:form method='POST' modelAttribute="hotelBean" 
				class='form-horizontal' enctype="multipart/form-data">
			<fieldset >
			
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='country'>
						國家：
					</label>
					<div class="col-lg-10">
						 <form:input  path="country" type='text'
							class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='city'>
						城市  ：
					</label>
					<div class="col-lg-10">
						<form:input  path="city" type='text'
							class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class='control-label col-lg-2 col-lg-2' for="name">
						飯店名稱：
					</label>
					<div class="col-lg-10">
						<form:input  path="name" type='text'
							class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='productImage'>
						 上傳照片
					</label>
					<div class="col-lg-10">
						<form:input  path="productImage" type='file'
							class='form:input-large' />
					</div>
				</div>				
				
				<div class="form-group">
					<label class='control-label col-lg-2 col-lg-2' for="file_name">
						檔案名稱：
					</label>
					<div class="col-lg-10">
						<form:input  path="file_name" type='text'
							class='form:input-large' />
					</div>
				</div>
								
				<div class="form-group">
					<label class='control-label col-lg-2 col-lg-2' for="introduction">
						簡介：
					</label>
					<div class="col-lg-10">
						<form:input  path="introduction" type='text'
							class='form:input-large' />
					</div>
				</div>
				
				<div class="form-group">
					<div class='col-lg-offset-2 col-lg-10'>
						<input id="btnAdd" type='submit' class='btn btn-primary'
							value="<spring:message code='spring.addProduct.form.submit.label' />" />
					</div>
				</div>
				
			</fieldset>
		</form:form>
	</section>
	
	
	
</body>
</html>