<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Admission list</title>
<style>
body { margin: 0;}
/* Style the header */
.header {background-color: #C0C0C0; padding: 30px;text-align: center;}
table {

	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 10px;
}

tr:nth-child(even) {
	background-color: #f2f2f9;
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
<body>
	<div class="header">
  <h1> NEW ADMISSION LIST</h1>
</div>
	<div style="margin-top: 40px;">
			<table>
				<thead>
					<tr style="background-color: #E0E0E1;">
						<th>Student Name</th>
						<th>Date Of Birth</th>
						<th>Standard</th>
						
					</tr>
				</thead>
				<s:iterator value="beanList">
					<tr>
						<td><s:property value="sname" /></td>
						<td><s:property value="dob" /></td>
						<td><s:property value="standard" /></td>
						
							
					</tr>
				</s:iterator>
			</table>
			<a href="adduser.jsp" class="button">Home</a>
		
		
		
	</div>
</body>
</html>