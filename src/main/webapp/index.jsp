   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>

<html>

<head>
  <title>web Development</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <style>

.imageColumn {
   float: left;
   width: 25%;
   padding: 10px;
}

ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: #666666;
}

li 
{
  float: left;
    border-right: 1px solid blue;
}

li a 
{
  display: block;
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: #000000;
color: white;
}
li a:hover {
  background-color: #00003f;
  color: white;
}
  body{
	
  background-image: url('Background.jpg');
  background-repeat: no-repeat;
  background-size: 1927px;
}
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
    * {
      margin: 0;
      padding: 0;
    }

    .navbar {
      display: flex;
      align-items: center;
      justify-content: center;
      position: sticky;
      top: 0;
      cursor: pointer;
    }

    .background {
      background: black;
      background-blend-mode: darken;
      background-size: cover;
    }

    
    .firstsection {
      background-color: green;
      height: 400px;
    }

    .secondsection {
      background-color: blue;
      height: 400px;
    }

    .box-main {
      display: flex;
      justify-content: center;
      align-items: center;
      color: black;
      max-width: 80%;
      margin: auto;
      height: 80%;
    }

    .firsthalf {
      width: 100%;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .secondhalf {
      width: 30%;
    }

    .secondhalf img {
      width: 70%;
      border: 4px solid white;
      border-radius: 150px;
      display: block;
      margin: auto;
    }

    .text-big {
      font-family: 'Piazzolla', serif;
      font-weight: bold;
      font-size: 35px;
    }

    .text-small {
      font-size: 18px;
    }

    .btn {
      padding: 8px 20px;
      margin: 7px 0;
      border: 2px solid white;
      border-radius: 8px;
      background: none;
      color: white;
      cursor: pointer;
    }

    .btn-sm {
      padding: 6px 10px;
      vertical-align: middle;
    }

    .section {
      height: 400px;
      display: flex;
      align-items: center;
      justify-content: center;
      max-width: 90%;
      margin: auto;
    }
    .section-Left {
      flex-direction: row-reverse;
    }

    .paras {
      padding: 0px 65px;
    }

    .thumbnail img {
      width: 250px;
      border: 2px solid black;
      border-radius: 26px;
      margin-top: 19px;
    }

    .center {
      text-align: center;
    }

    .text-footer {
      text-align: center;
      padding: 30px 0;
      font-family: 'Ubuntu', sans-serif;
      display: flex;
      justify-content: center;
      color: white;
    }
  </style>
</head>

<body>
<h1 align=center>Online Examination System</h1>
<br><br>
<div>
<ul>
  <li><a class="active" href="/">Home</a></li>
  <li><a href="adminlogin">Admin</a></li>
  <li><a href="employeelogin">Employee</a></li>
  <li><a href="StudentLogin">Student</a></li>
  
</ul>

<br><br><br>
  </div>
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
   <img src="img1.jpg" style="width:100%">
  <div class="text">Quiz</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="img2.jpg" style="width:100%">
  <div class="text">Quiz on web-developement</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="oq.jpg" style="width:100%">
  <div class="text">Quiz on programming</div>
</div>

<a class="prev" onclick="plusSlides(-1)"><</a>
<a class="next" onclick="plusSlides(1)">></a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<script>
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
  
  

  <section class="firstsection">
    <div class="box-main">
      <div class="firstHalf">
        <h1 class="text-big" id="web">About Quiz-1</h1>
        <p class="text-small">
          
          
Web development refers to the building, creating, and maintaining of websites.
 It includes aspects such as web design, web publishing, web programming, and 
 database management. It is the creation of an application that works over the
  internet i.e. websites.
        </p>


      </div>
    </div>
  </section>

  <section class="secondsection">
    <div class="box-main">
      <div class="firstHalf">
        <h1 class="text-big" id="program">
          About Quiz-2
        </h1>
        <p class="text-small">
          
A programming language is a system of notation for writing computer programs.
Most programming languages are text-based formal languages, but they may also
 be graphical. They are a kind of computer language.
        </p>


      </div>
    </div>
  </section>

  <section class="section">
    <div class="paras">
      <h1 class="sectionTag text-big">Online quiz management system</h1>

      <p class="sectionSubTag text-small">
        With the help of ‚ÄúOnline Quiz Management SystemÄù, users would be able to create 
        and conduct quizzes for students. 
      </p>


    </div>

    <div class="thumbnail">
      
    </div>
  </section>
  
  <footer class="background">
    <p class="text-footer">
      Copyright@ -All rights are reserved
    </p>


  </footer>
</body>

</html>