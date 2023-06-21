<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <s:head />
    <style type="text/css">
    body { margin: 0;}
    .header {
        background-color: #C0C0C0;
        padding: 30px;
        text-align: center;
    }
    
    .button-insert {
        background-color: green;
        color: white;
        font-size: 15px
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
    <script>
    function validateForm() {
        var studentName = document.getElementById("sname").value;
        var standard = document.getElementById("standard").value;
        
        var nameRegex = /^[a-zA-Z]+$/;
        var standardRegex = /^[0-9]+$/;
        
        if (!nameRegex.test(studentName)) {
            alert("Please enter only alphabets for Student Name.");
            return false;
        }
        
        if (!standardRegex.test(standard)) {
            alert("Please enter only integers for Standard.");
            return false;
        }
    }
    </script>
</head>
<body>
    <div class="header">
        <h1> STUDENT ADMISSION PAGE</h1>
    </div>
    <div style="margin-top: 60px; margin-left:10px;">
        <s:form action="admission" onsubmit="return validateForm();">
            <s:textfield label="Student Name" name="sname" id="sname" cssClass="textfield" />
            <s:textfield label="Date Of Birth" name="dob" type="date" cssClass="textfield" />
            <s:textfield label="Standard" name="standard" id="standard" cssClass="textfield" />
            <s:submit cssClass="button-insert" value="Insert" />
        </s:form>
        <s:if test="ctr > 0">
            <span style="color: green;"><s:property value="msg" /></span>
        </s:if>
        <s:else>
            <span style="color: red;"><s:property value="msg" /></span>
        </s:else>
        <a href="adduser.jsp" class="button">Home</a>
    </div>
</body>
</html>
