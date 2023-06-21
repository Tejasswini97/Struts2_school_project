<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
        width: 150px;
        padding: 3px;
        margin-bottom: 10px;
    }
    .status {
        font-weight: bold;
        margin-top: 10px;
    }
</style>
<script>
    function validateForm() {
        var studentId = document.getElementById("studentId").value;
        var studentName = document.getElementById("studentName").value;
        var physicsMarks = document.getElementById("physicsMarks").value;
        var chemistryMarks = document.getElementById("chemistryMarks").value;
        var mathsMarks = document.getElementById("mathsMarks").value;

        if (studentId.trim() === "") {
            alert("Student ID is required.");
            return false;
        }

        if (studentName.trim() === "") {
            alert("Student Name is required.");
            return false;
        }

        if (physicsMarks.trim() === "" || chemistryMarks.trim() === "" || mathsMarks.trim() === "") {
            alert("Please enter marks for Physics, Chemistry, and Maths.");
            return false;
        }

        if (isNaN(studentId)) {
            alert("Student ID should be a number.");
            return false;
        }

        if (!/^[a-zA-Z]+$/.test(studentName)) {
            alert("Student Name should only contain alphabets.");
            return false;
        }

        calculateTotalMarks();
    }

    function calculateTotalMarks() {
        var physicsMarks = parseInt(document.getElementById("physicsMarks").value);
        var chemistryMarks = parseInt(document.getElementById("chemistryMarks").value);
        var mathsMarks = parseInt(document.getElementById("mathsMarks").value);
        var totalMarks = physicsMarks + chemistryMarks + mathsMarks;
        var percentage = (totalMarks / 300) * 100;

        document.getElementById("totalMarks").value = totalMarks;
        document.getElementById("percentage").value = percentage.toFixed(2);

        var statusElement = document.getElementById("status");
        if (percentage >= 80) {
            statusElement.value = "Distinction";
        } else if (percentage >= 30 && percentage < 80) {
            statusElement.value = "Pass";
        } else {
            statusElement.value = "Fail";
        }
    }
</script>
</head>
<body>
    <div class="header">
        <h1>INSERT STUDENT DETAILS PAGE</h1>
    </div>
    <div style="margin-top: 60px; margin-left:10px;">
        <s:form action="Student" method="post" onsubmit="return validateForm();">
            <s:textfield label="Student Id" name="studentid" id="studentId" cssClass="textfield" />
            <s:textfield label="Student Name" name="studentname" id="studentName" cssClass="textfield" />
            <s:textfield label="Date Of Birth" name="dob" type="date" cssClass="textfield" />
            <s:textfield label="Standard" name="standard" cssClass="textfield" />
            <s:textfield label="Physics Marks" name="physics" id="physicsMarks" onchange="calculateTotalMarks();" cssClass="textfield" />
            <s:textfield label="Chemistry Marks" name="chemistry" id="chemistryMarks" onchange="calculateTotalMarks();" cssClass="textfield" />
            <s:textfield label="Maths Marks" name="maths" id="mathsMarks" onchange="calculateTotalMarks();" cssClass="textfield" />
            <s:textfield label="Total Marks" name="Total" id="totalMarks" cssClass="textfield" readonly="true" />
            <s:textfield label="Percentage" name="percentage" id="percentage" cssClass="textfield" readonly="true" />
            <s:textfield label="Status" name="status" id="status" cssClass="textfield" readonly="true" />
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
