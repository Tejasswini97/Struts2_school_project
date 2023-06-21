<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<s:head />
<style type="text/css">
body { margin: 0;}
/* Style the header */
.header {
	background-color: #C0C0C0;
	padding: 30px;
	text-align: center;
}
.button-login {
    background-color: green;
    color: white;
    font-size: 15px
}
.button {
	background-color: #4CAF50;
	border-radius: 12px;
	color: Black;
	padding: 10px 15px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
.textfield {
    width: 200px;
    padding: 5px;
    margin-bottom: 10px;
}
</style>



</head>


<body>

	<div class="header">
		<h1> ADMIN LOGIN PAGE</h1>
	</div>
	<div style="margin-top: 60px; margin-left:10px;">
		<s:form action="admin">
			 <s:textfield label="Enter Username" name="username" cssClass="textfield" />
            <s:password label="Password" name="password"  cssClass="textfield" />
            <s:submit cssClass="button-login" value="Login" />
		</s:form>
<a href="index" class="button">Home</a>
	</div>
</body>
</html>