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
  <li><a href="adminhome">Home</a></li>
  <li><a class="active"  href="viewallemps">View</a></li>
  <li><a href="adminlogin">Logout</a></li>
  <li><a class="active"  href="viewallstudents">View</a></li>
</ul>

<br><br>



<table align=center border=2>

<tr>

<th>ID</th>
<th>Name</th>
<th>Gender</th>
<th>Date of Birth</th>
<th>Department</th>
<th>Designation</th>
<th>Salary</th>
<th>Location</th>
<th>Email ID</th>
<th>Username</th>
<th>Contact No</th>
<th>Action</th>

</tr>

<c:forEach items="${emplist}" var="emp">

<tr>

<td> <c:out value="${emp.id}"></c:out>   </td>
<td> <c:out value="${emp.name}"></c:out>   </td>
<td> <c:out value="${emp.gender}"></c:out>   </td>
<td> <c:out value="${emp.dateofbirth}"></c:out>   </td>
<td> <c:out value="${emp.department}"></c:out>   </td>
<td> <c:out value="${emp.designation}"></c:out>   </td>
<td> <c:out value="${emp.salary}"></c:out>   </td>
<td> <c:out value="${emp.location}"></c:out>   </td>
<td> <c:out value="${emp.emailid}"></c:out>   </td>
<td> <c:out value="${emp.username}"></c:out>   </td>
<td> <c:out value="${emp.contactno}"></c:out>   </td>
<td> 

<a href='<c:url value='deleteemp?id=${emp.id}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewempbyid?id=${emp.id}'></c:url>'>View</a>&nbsp;&nbsp;


</td>
<td>
 <div class="Student">
<a href="/">Back</a>

</div>
</td>

</tr>

</c:forEach>

</table>

</body>
</html>

 
