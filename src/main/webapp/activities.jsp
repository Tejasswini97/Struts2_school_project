<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Curricular Activities</title>
    <style>
     body { margin: 0;}
/* Style the header */
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
            margin: 60px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }

        h1 {
            text-align: center;
        }

        .activity {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .activity img {
            width: 80px;
            height: 80px;
            margin-right: 20px;
        }

        .activity-content {
            flex: 1;
        }

        .activity h2 {
            margin: 0;
        }

        .activity p {
            margin: 0;
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
		<h1>CURRICULLAR ACTIVITIES</h1>
	</div>
    <div class="container">
        <div class="activity">
            <img src="./image/sports.png" alt="Sports">
            <div class="activity-content">
                <h2>Sports</h2>
                <p>We offer a variety of sports activities for students, including football, basketball, volleyball, and athletics. Our school encourages students to participate in sports and provides regular training sessions and opportunities to compete in inter-school competitions.</p>
            </div>
        </div>
        <div class="activity">
            <img src="./image/quiz.jpg" alt="Quiz">
            <div class="activity-content">
                <h2>Quiz</h2>
               <p>We organize quizzes on various subjects to enhance students' knowledge and critical thinking skills. Quiz competitions are held at both intra-school and inter-school levels, allowing students to showcase their intellectual abilities and compete with their peers.</p>
            </div>
        </div>
        <div class="activity">
            <img src="./image/more.jpg" alt="More Activities">
            <div class="activity-content">
                <h2>More Activities</h2>
                 <p>In addition to sports and quizzes, we offer a wide range of curricular activities such as music, dance, drama, art, and science clubs. These activities provide students with opportunities for creative expression, teamwork, and personal development.</p>
            </div>
        </div>
    </div>
     <a href="index.jsp" class="button">Home</a>
</body>
</html>
