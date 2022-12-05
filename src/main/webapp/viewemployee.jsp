<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<style>
.TableContents{
	font-size:25px;

}
.Employee{
  background-color: lightblue;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}
body{
	
  background-image: url('Background.jpg');
  background-repeat: no-repeat;
  background-size: 1927px;
  font-size:25px
}
ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: lightgreen;
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
 font-size:5cm;
  text-align: center;
  padding: auto;
  text-decoration: none;
}
.active
{
background-color: black;
color: white;
}
li a:hover {
  background-color: orange;
  color: white;
}
</style>
</head>
<body>

<h1 align=center>Online Examination System</h1>

<br>


<br>

<h3 align=center>Welcome&nbsp;<c:out value="${euname}"></c:out></h3>

<br>

<table align=center class="TableContents">

<tr><th>ID:</th>&nbsp;<td>${emp.id}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${emp.name}</td></tr>
<tr><th>Gender:</th>&nbsp;<td>${emp.gender}</td></tr>
<tr><th>Date of Birth:</th>&nbsp;<td>${emp.dateofbirth}</td></tr>
<tr><th>Department:</th>&nbsp;<td>${emp.department}</td></tr>
<tr><th>Designation:</th>&nbsp;<td>${emp.designation}</td></tr>
<tr><th>Salary:</th>&nbsp;<td>${emp.salary}</td></tr>
<tr><th>Location:</th>&nbsp;<td>${emp.location}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${emp.emailid}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${emp.contactno}</td></tr>

<tr>
<td>
 <div class="Employee">
<a href="/employeehome">Back</a>

</div>
</td>
</tr>

</table>



</body>
</html>

 
