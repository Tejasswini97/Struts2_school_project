
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 body {
        background-image: url('./image/img.png');
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center;
    }
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}
/* Style the header */
.header {
  padding: 30px;
  text-align: center;
  background: #C0C0C0;
  color: Black;
}
/* Increase the font size of the h1 element */
.header h1 {
  font-size: 40px;
}

/* Style the top navigation bar */
.navbar {
  overflow: hidden;
  background-color: #335;
}

/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
  float: right;
}

/* Change color on hover */
.navbar a:hover {
  background-color: white;
  color: black;
}
.column {
        flex: 0 0 30%;
        padding: 20px;
        box-sizing: border-box;
        margin-bottom: 20px;
    }
/* Clear floats after the columns */
.row {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: flex-start;
    }

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width:300px) {
  .column {
    width: 100%;
  }
}

.c1{color: black; font-size: 20px;}
.c2{color: black; font-size: 20px;}
.c3{color: black; font-size: 20px;}


/* selected link */
a:active {
  color: blue;
}
.site-footer {
  background-color: #C0C0C0;
	text-align: center;
	margin-top: 70px;
	padding: 10px 0;
}
 
/*Social Media Icons*/
.social-wrapper {
	text-align: center;
}

.social-wrapper ul li {
	display: inline;
	margin: 0 5px;
}

.twitter-icon,
.facebook-icon,
.instagram-icon,
.linkedin-icon,
.googleplus-icon,
.youtube-icon,
.foursquare-icon{
	margin-top: .625em;
	width: 40px;
	height: 40px;
	opacity: .6;
	filter: alpha(opacity=60); /* For IE8 and earlier */
  border-radius: 25px;
}

.twitter-icon:hover,
.facebook-icon:hover,
.instagram-icon:hover,
.linkedin-icon:hover,
.googleplus-icon:hover,
.youtube-icon:hover,
.foursquare-icon:hover {
	opacity: 1.0;
	filter: alpha(opacity=100); /* For IE8 and earlier */
}

.footer-nav p {
	text-align: center;
}
</style>
</head>

<body>


<div class="header">
  <h1>WELCOME TO VVN SCHOOL OF EDUCATION</h1>
  <p>A high achieving multi-cultural community for learning.</p>
</div>
<div class="navbar">
  <a href="index.jsp">Home</a>
  <a href="enquiry.jsp">Contact Us</a>
  <a href="feedback.jsp">FeedBack</a>
  <a href="admin.jsp" class="right"> Admin Login </a>
</div>
   <div class="row">
  <div class="column">
    <h2>Content</h2>
    <a id="i1" class="c1" href="result.jsp">2023 Batch Result</a><br/><br/>
    
    <a id="i2" class="c2" href="viewtoppers">Topper's List</a><br/><br/>
    
    <a id="i3" class="c3" href="viewfaculty">Faculty Details</a><br/><br/>
  </div>
  
  <div class="column">
    <h2>About Us</h2>
     
 <p>VVN SCHOOL is an educational institution designed to provide learning spaces and learning environments for the teaching of students under the direction of teachers</p>
 <p>We are committed to providing quality education and fostering a nurturing learning environment for our students.</p>
 <p>Address: 3RD MAIN, 2ND CROSS, B-BLOCK, KUVEMPUNAGAR, MYSURU-570023   </p>
  <a class="c4" href="/insertdept.jsp"></a><br/><br/>
  </div>
   <div class="column">
    <h2>Content</h2>
    <a id="i1" class="c1" 
    href="user.jsp">For Admission</a><br/><br/>
    <a id="i2" class="c2" href="activities.jsp">Curricular Activities</a><br/><br/>
    
  
  </div>
   </div>
   
  <footer id="colophon" class="site-footer" role="contentinfo">
  <div class="social-wrapper">
    <ul>
      <li>
        <a href="https://twitter.com/i/flow/login" target="_blank">
          <img src="https://cdn1.iconfinder.com/data/icons/logotypes/32/twitter-128.png" alt="Twitter Logo" class="twitter-icon"></a>
      </li>
      <li>
        <a href="https://www.instagram.com/accounts/login/" target="_blank">
          <img src="https://www.mchenryvillage.com/images/instagram-icon.png" alt="Instagram Logo" class="instagram-icon"></a>
      </li>
     
      <li>
        <a href="https://www.facebook.com/login/" target="_blank">
          <img src="http://www.iconarchive.com/download/i54037/danleech/simple/facebook.ico" alt="Facebook Logo" class="facebook-icon"></a>
      </li>
      <li>
        <a href="https://support.google.com/answer/2451065?hl=en" target="_blank">
          <img src="http://icons.iconarchive.com/icons/marcus-roberto/google-play/256/Google-plus-icon.png" alt="Googleplus Logo" class="googleplus-icon"></a>
      </li>
      <li>
        <a href="#" target="_blank">
          <img src="https://lh3.googleusercontent.com/j_RwVcM9d47aBDW5DS1VkdxUYCkDUCB6wZglv4x-9SmsxO0VaFs7Csh-FmKRCWz9r_Ef=w170" alt="Youtube Logo" class="youtube-icon"></a>
      </li>
     
    </ul>
  </div>

  <nav class="footer-nav" role="navigation">
    <p>VVN School Of Education.  Contact : +9134567890 </p>
     
  </nav>
</footer>

   
 
      
</body>
</html>