<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>



<!DOCTYPE html>
<html>
<head>
<style>
body{
	
  background-image: url('Background.jpg');
  background-repeat: no-repeat;
  background-size: 1927px;
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
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: darkblue;
color: white;
}
li a:hover {
  background-color: black;
  color: white;
}
</style>
</head>
<body>

<h1 align=center>Online Examination System</h1>

<br>

<ul>
  <li><a class="active" href="adminhome">Home</a></li>
  <li><a href="viewallemps">View All Faculty</a></li>
  <li><a href="viewallfeedbacks">View All Feedback</a></li>
  <li><a href="Chart">View Scores in Graphs</a></li>
   <li><a href="adminlogin">Logout</a></li>
</ul>

<br>

<h3 align=center>Welcome&nbsp;<c:out value="${auname}"></c:out></h3>

</body>
</html>

 
