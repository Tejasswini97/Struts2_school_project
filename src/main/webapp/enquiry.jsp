<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Enquiry Form</title>
    <style>
     body { margin: 0;}
    .header {
        background-color: #C0C0C0;
        padding: 30px;
        text-align: center;
    }
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        h1 {
            text-align: center;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 95%;
            padding: 8px;
            border-radius: 3px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin-top: 10px;
            cursor: pointer;
            border-radius: 3px;
        }

        .error {
            color: red;
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
    <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var phoneNumber = document.getElementById("phoneNumber").value;
            var valid = true;

            if (!/^[a-zA-Z]+$/.test(username)) {
                document.getElementById("usernameError").innerHTML = "Username must contain only alphabets";
                valid = false;
            } else {
                document.getElementById("usernameError").innerHTML = "";
            }

            if (!/^\d{10}$/.test(phoneNumber)) {
                document.getElementById("phoneNumberError").innerHTML = "Phone number must be 10 digits";
                valid = false;
            } else {
                document.getElementById("phoneNumberError").innerHTML = "";
            }

            return valid;
        }
    </script>
</head>
<body>
<div class="header">
        <h1>REQUEST A CALL BACK</h1>
    </div>
    
<div class="container">
   

    <form action="submitEnquiry" method="post" onsubmit="return validateForm()">
        <label for="username">Username:</label>
        <input type="text" name="username" id="username" required><br>
        <span id="usernameError" class="error"></span>

        <label for="phoneNumber">Phone Number:</label>
        <input type="text" name="phoneNumber" id="phoneNumber" required><br>
        <span id="phoneNumberError" class="error"></span>

        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required><br>

        <label for="message">Message:</label><br>
        <textarea name="message" id="message" rows="5" required></textarea><br>

        <input type="submit" value="Submit">
         <a href="index" class="button">Home</a>
    </form>
</div>
</body>
</html>
