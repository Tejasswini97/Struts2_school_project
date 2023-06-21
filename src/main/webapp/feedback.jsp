<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback</title>
    <style>
    <style type="text/css">
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
            max-width: 800px;
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
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 99%;
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

        .nav-link {
            display: inline-block;
            margin-top: 20px;
            color: #4CAF50;
            text-decoration: none;
        }

        .nav-link img {
            vertical-align: middle;
            margin-right: 5px;
        }

        .contact-info {
            text-align: center;
            margin-top: 20px;
        }

        .contact-info img {
            vertical-align: middle;
            margin-right: 5px;
        }

        .contact-info p {
            display: inline-block;
            margin: 0;
            font-size: 14px;
            color: #4CAF50;
        }
        
        .button {
            background-color: #4CAF50;
            border-radius: 12px;
            color: black;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
        
        .success-message {
            text-align: center;
            color: #4CAF50;
            font-weight: bold;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="header">
        <h1>YOUR FEEDBACK</h1>
    </div>
<div class="container">
    

    <form action="submitFeedback" method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required><br>

        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required><br>

        <label for="message">Message:</label><br>
        <textarea name="message" id="message" rows="5" required></textarea><br>

        <input type="submit" value="Send">
        <a href="index" class="button">Home</a>
    </form>

    <div class="contact-info">
        <p>Call us at +9134567890</p>
    </div>

    <div class="success-message">
        <%-- This section will be hidden by default --%>
        <p id="successMsg" style="display: none;">Thank you for your feedback!</p>
    </div>
</div>

<script>
    // Show success message on form submission
    document.querySelector("form").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent form submission

        // Show success message
        document.getElementById("successMsg").style.display = "block";

        // Hide the form
        document.querySelector("form").style.display = "none";
        
        // Redirect to home screen after a delay
        setTimeout(function() {
            window.location.href = "index"; // Replace "index" with the actual URL of your home screen
        }, 1000); // Adjust the delay (in milliseconds) as per your preference
   
    });
</script>

</body>
</html>
