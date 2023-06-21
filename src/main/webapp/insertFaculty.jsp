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
    var facultyName = document.getElementById("facultyName").value;
    var experience = document.getElementById("experience").value;
    var subject = document.getElementById("subject").value;
    
    if (facultyName.trim() === "") {
        alert("Faculty Name is required.");
        return false;
    }
    
    if (experience.trim() === "") {
        alert("Experience is required.");
        return false;
    }
    
    if (subject.trim() === "") {
        alert("Subject to be Handled is required.");
        return false;
    }
    
    if (!/^[a-zA-Z]+$/.test(facultyName)) {
        alert("Faculty Name should only contain alphabets.");
        return false;
    }
}
</script>

</head>
<body>
    <div class="header">
        <h1>INSERT FACULTY DETAILS PAGE</h1>
    </div>
    <div style="margin-top: 60px; margin-left:10px;">
        <s:form action="Faculty" method="post" onsubmit="return validateForm();">
            <s:textfield label="Faculty Name" name="fname" id="facultyName" cssClass="textfield" />
            <s:textfield label="Experience" name="experience" id="experience" cssClass="textfield" />
            <s:select label="Subject To Be Handled" name="subject" id="subject" headerKey="" headerValue="-- Select Subject --" list="#{'physics':'Physics', 'chemistry':'Chemistry', 'maths':'Maths'}" cssClass="textfield" />
            <s:submit cssClass="button-insert" value="Insert" />
        </s:form>
        <s:if test="ctr>0">
            <span style="color: green;"><s:property value="msg" /></span>
        </s:if>
        <s:else>
            <span style="color: red;"><s:property value="msg" /></span>
        </s:else>
        <a href="welcome.jsp" class="button">Home</a>
    </div>
</body>
</html>
