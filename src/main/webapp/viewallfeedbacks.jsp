<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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

<h1 align=center>Online Quiz Management System</h1>

<br>

<ul>
  <li><a href="adminhome">Home</a></li>
  <li><a class="active"  href="viewallfeedbacks">View</a></li>
  <li><a href="adminlogin">Logout</a></li>
</ul>

<br><br>



<table align=center border=2>

<tr>

<th>ID</th>
<th>UserName</th>
<th>Rating</th>

</tr>

<c:forEach items="${feedlist}" var="feed">

<tr>

<td> <c:out value="${feed.fdbkid}"></c:out>   </td>
<td> <c:out value="${feed.usrnm}"></c:out>   </td>
<td> <c:out value="${feed.rating}"></c:out>   </td>
<td> 


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