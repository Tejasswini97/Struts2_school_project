<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
    .textfield {
        width: 200px;
        padding: 5px;
        margin-bottom: 10px;
    }
    </style>
    <s:head />
    <script>
    function validateForm() {
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        
        var usernameRegex = /^[a-zA-Z]+$/;
        var passwordRegex = /^[a-zA-Z0-9!@#$%^&*()]+$/;
        
        if (!usernameRegex.test(username)) {
            alert("Username should not contain numbers.");
            return false;
        }
        
        if (!passwordRegex.test(password)) {
            alert("Password should be alphanumeric and can contain special characters like !@#$%^&*().");
            return false;
        }
    }
    </script>
</head>
<body>
    <div class="header">
        <h1> USER LOGIN PAGE</h1>
    </div>
    <div style="margin-top: 60px; margin-left:10px;">
        <s:form action="user" onsubmit="return validateForm();">
            <s:textfield label="Enter Username" name="username" id="username" cssClass="textfield" />
            <s:password label="Password" name="password" id="password" cssClass="textfield" />
            <s:password label="Confirm Password" name="confirmPassword" cssClass="textfield" />
            <s:submit cssClass="button-login" value="Login" />
        </s:form>
        <a href="index" class="button">Home</a>
    </div>
</body>
</html>
