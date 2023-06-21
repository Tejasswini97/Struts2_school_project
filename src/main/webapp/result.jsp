<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Result Page</title>
    <style type="text/css">
        body { margin: 0; }
        /* Style the header */
        .header {
            background-color: #C0C0C0;
            padding: 30px;
            text-align: center;
        }

        .topnav {
            overflow: hidden;
            background-color: #335;
            text-align: center;
            colour: white;
        }

        /* Style the topnav links */
        .button-submit {
            background-color: green;
            color: white;
            font-size: 15px;
            align-items: center;
        }

        /* Center align the form */
        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 60px;
        }
    </style>
    <script type="text/javascript">
        function validateForm() {
            var studentId = document.getElementById('studentId').value;
            var regex = /^\d+$/; // Regular expression to match only numbers

            if (!regex.test(studentId)) {
                alert("Student ID should contain only numbers.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <div class="header">
        <h1>SEARCH YOUR RESULT</h1>
    </div>
    <div class="topnav">
        <h2>All The Best For Your Result!</h2>
    </div>
    <div class="form-container">
        <s:form action="viewResult" method="post" onsubmit="return validateForm();">
            <div style="display: flex; flex-direction: column; align-items: center;">
                <label for="studentId">Enter Student ID:</label>
                <s:textfield name="studentId" id="studentId" />
            </div>
            <s:submit value="View Result" cssClass="button-submit" />
        </s:form>
    </div>
</body>
</html>
