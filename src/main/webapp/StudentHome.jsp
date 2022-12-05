<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.navbar {
  overflow: hidden;
  background-color: #333;
  font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  cursor: pointer;
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}
.column {
  float: left;
  width: 33.33%;
  padding: 5px;
  
  
  justify-content: space-between;
}

/* Clear floats after image containers */
.row::after {
  content: "";
  clear: both;
  display: table;
  justify-content: space-between;
<!--  border: 1px solid red;-->
}
.navbar a:hover, .dropdown:hover .dropbtn, .dropbtn:focus {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.show {
  display: block;
}
body{
  
  background-image: url('Background.jpg');
  background-repeat: no-repeat;
  background-size: 1927px;
}


.Quiz   {
  background-color: #d0e0e3;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}
ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: grey;
}

li 
{
  float: left;
    border-right: 1px solid blue;
}

li a 
{
  display: block;
  color: white;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: black;
color: white;
}
li a:hover {
  background-color: lightblue;
  color: black;
}
</style>
</head>
<body>

<h1 align=center>Online Quiz Management System</h1>

<br>
<div class="navbar">
  <a href="employeehome">Home</a>
  <li><a href="feedback">Feedback</a></li>
  <a href="Quizabout">About</a>
  <div class="dropdown">
  <button class="dropbtn" onclick="myFunction()">Profile
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="myDropdown">
    <a href="viewuser">View Profile</a>
    <a href="echangepwd">Change Password</a>
    <a href="StudentLogin">Logout</a>
  </div>
  </div> 
</div>

<h3 align=cent>Welcome&nbsp;<c:out value="${euname}"></c:out></h3>
<br>
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<div class="row">

  <div class="column">
    <img src="unnamed.png" alt="Snow" width="500" height="500">
   

      <div class="row">
      <center>
        <a class="w3-button w3-red" href="/Quiz1">Java Quiz</a>
        </center>
      </div>
  </div>
  <div class="column">
    <img src="Math.png"  alt="Girl in a jacket" width="500" height="500">
  

      <div class="row">
      <center>
              <a class="w3-button w3-red" href="/Quiz2">Math Quiz</a>
              </center>
      </div>
  </div>
  </div>

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
  var myDropdown = document.getElementById("myDropdown");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
}
</script>
</body>
</html>