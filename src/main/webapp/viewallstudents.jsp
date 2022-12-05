<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<style>
body{
	
  background-image: url('Backgroun.jpg');
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
  <li><a href="employeehome">Home</a></li>
  <li><a class="active"  href="viewallstudents">View</a></li>
  <li><a href="employeelogin">Logout</a></li>
</ul>

<br><br>



<table align=center border=2>

<tr>

<th>ID</th>
<th>First Name</th>
<th>Last Name</th>
<th>Mobile no</th>
<th>Email ID</th>
<th>Score</th>
<!-- th>Email ID</th>
<th>Username</th>
<th>Contact No</th>
<th>Action</th>
	 -->
</tr>

<c:forEach items="${studlist}" var="std">

<tr>

<td> <c:out value="${std.user_id}"></c:out>   </td>
<td> <c:out value="${std.user_fname}"></c:out>   </td>
<td> <c:out value="${std.user_lname}"></c:out>   </td>
<td> <c:out value="${std.user_mobile}"></c:out>   </td>
<td> <c:out value="${std.user_email}"></c:out>   </td>
<td> <c:out value="${std.score}"></c:out>   </td>


</tr>

</c:forEach>

</table>

</body>
</html>

 
