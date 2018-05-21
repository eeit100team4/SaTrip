<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>login</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

/* style the container */
.container {
  position: relative;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 10px 0 1px 0;
} 

/* style inputs and link buttons */
input,
.btn {
  width: 100%;
  padding: 12px;
  border: none;
  border-radius: 4px;
  margin: 5px 0;
  opacity: 0.85;
  display: inline-block;
  font-size: 17px;
  line-height: 20px;
  text-decoration: none; /* remove underline from anchors */
}

input:hover,
.btn:hover {
  opacity: 1;
}

/* add appropriate colors to fb, twitter and google buttons */
.fb {
  background-color: #3B5998;
  color: white;
}

.twitter {
  background-color: #55ACEE;
  color: white;
}

.google {
  background-color: #dd4b39;
  color: white;
}

/* style the submit button */
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

/* Two-column layout */
.col {

/*   float: left; */
  width: 50%;
  margin: auto;
/*   padding: 50px 50px; */
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* vertical line */
.vl {
  position: absolute;
  left: 50%;
  transform: translate(-50%);
  border: 2px solid #ddd;
  height: 175px;
}

/* text inside the vertical line */
.vl-innertext {
  position: absolute;
  top: 50%;
  transform: translate(-50%, -50%);
  background-color: #f1f1f1;
  border: 1px solid #ccc;
  border-radius: 50%;
  padding: 8px 10px;
}

/* hide some text on medium and large screens */
.hide-md-lg {
  display: none;
}

/* bottom container */
.bottom-container {
  text-align: center;
  background-color: #666;
  border-radius: 0px 0px 4px 4px;
}

/* Responsive layout - when the screen is less than 650px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 650px) {
  .col {
    width: 100%;
    margin-top: 0;
  }
  /* hide the vertical line */
  .vl {
    display: none;
  }
  /* show the hidden text on small screens */
  .hide-md-lg {
    display: block;
    text-align: center;
  }
}
</style>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="https://apis.google.com/js/platform.js" defer async="true"></script>
</head>
<body onLoad="setFocusToUserId()" style="background: #EBFFEB;">
<div style="margin:auto;width:30%" >
<div class="container" style="padding:center;" >
  <form name="loginForm" action="<c:url value='/member/login.do'/>" method="POST" align="center">
  <div class="row">
  	<h2 >Login </h2>
  	<div class="col-md-4" >
<<<<<<< HEAD
        <input id="errorMsgMap" type="text" name="memberId" placeholder="身份證字號" required>${ErrorMsgMap.AccountEmptyError}</Font></small></TD>
        <input id="errorMsgMap" type="password" name="password" placeholder="Password" required>
<%--         <div id="errorMsgMap" style="color: #ff0000; font-size =60%; display: inline;">${ErrorMsgMap.LoginError}</div> --%>
        <div style="align=center;">
                <input type="checkbox"	name="rememberMe"
				<c:if test='${sessionScope.rememberMe==true}'>checked='checked'</c:if>
						value="true" style="width:10%">記住密碼
    	<TR height='10'>
             <TD align="CENTER" colspan='2'>&nbsp;<Font color='red' size="-1">${ErrorMsgMap.LoginError}&nbsp;</Font></TD>
         </TR>
=======
        <input type="text" name="memberId" placeholder="身份證字號" required>
        <input type="password" name="password" placeholder="Password" required>
                <div style="align=center;">
                <input type="checkbox"	name="rememberMe"
				<c:if test='${sessionScope.rememberMe==true}'>checked='checked'</c:if>
						value="true" style="width:10%">記住密碼
>>>>>>> branch 'master' of https://github.com/eeit100team4/Traveler.git
    	<div class="g-recaptcha col" data-sitekey="6LecRlkUAAAAAAjw-yatNu-zJHfZhcqVmg10Ce9b" style="width:304px"></div>
    </div>
    	 
			
		
        <input type="submit" value="Login">
<!--    <div class="col-md-8"></div>      -->

	</div>
  </div>
  <div class="row">
<!--       <div class="vl"> -->
<!--         <span class="vl-innertext">or</span> -->
<!--       </div> -->
  	<div class="col-md-4">
        <a href="#" class="fb btn">
          	<i class="fa fa-facebook fa-fw"></i> Login with Facebook
        </a>
        <a href="#" class="google btn">
        	<i class="fa fa-google fa-fw"></i> Login with Google+
        </a>

    </div>
    </div>    
  </form>
  </div>
<!-- </div> -->
<!-- <div style="width:70%"align="center"> style="padding:center-->

<div class="bottom-container" style="padding:0 0 1px 0;;margin-bottom: 0px">
  <div class="row">
    <div class="col">
      <a href="<spring:url value='/member/register'/>" style="color:white" class="btn">Sign up</a>
    </div>
    <div class="col">
      <a href="<spring:url value='/member/queryPwd'/>" style="color:white" class="btn">Forgot password?</a>
    </div>
  </div>
</div>
</div>
<!-- </div>  -->
</body>
</html>