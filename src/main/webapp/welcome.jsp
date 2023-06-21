<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
	font-size: 15px;
	button-align: center;
}

.c1 {
	color: black;
	font-size: 20px;
}

.c2 {
	color: black;
	font-size: 20px;
}



/* selected link */
a:active {
	color: blue;
}
.button {
	background-color: #4CAF50;
	border-radius: 12px;
	color: Black;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>

</head>
<body>
	<div class="header">
		<h1>WELCOME TO ADMIN LOGIN PAGE</h1>
	</div>
	<div style="margin-top: 60px; margin-left: 10px;">
		<a id="i1" class="c1" href="insertFaculty.jsp">Insert FacultyDetails</a><br /> <br />
		 <a id="i2" class="c2" href="insertstudent.jsp">Insert Student Details</a><br /> <br />
		 <a href="index.jsp" class="button">Home</a>
	</div>
	
</body>
</html>