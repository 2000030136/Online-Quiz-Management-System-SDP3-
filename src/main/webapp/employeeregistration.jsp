<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<style>
body{
	
  background-image: url('Background.jpg');
  background-repeat: no-repeat;
  background-size: 1927px;
}
.blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

.button {
  background-color: green;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
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
  background-color: orange;
  color: white;
}
</style>
</head>
<body>

<h1 align=center>Online Examination System</h1>

<br>

<ul>
  <li><a href="/">Home</a></li>
  <li><a href="adminlogin">Admin</a></li>
  <li><a class="active" href="employeelogin">Employee</a></li>
</ul>

<br><br>

<h3 align=center><u>Employee Registration</u></h3>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>


<form:form action="addemployee" method="post" modelAttribute="emp">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required"/>Male
<form:radiobutton path="gender" value="Female" required="required"/>Female
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td><form:input path="dateofbirth" required="required" placeholder="DD/MM/YYYY"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Department</label></td>
<td>
<form:select path="department" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="Development">Development</form:option>
<form:option value="Testing">Testing</form:option>
<form:option value="Design">Design</form:option>
</form:select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Designation</label></td>
<td>
<form:select path="designation" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="MANAGER">Manager</form:option>
<form:option value="TEAM LEAD">Team Lead</form:option>
<form:option value="PROJECT TRAINEE">Project Trainee</form:option>
</form:select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Salary</label></td>
<td><form:input path="salary" value="0.00" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Location</label></td>
<td><form:input path="location" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><form:input path="emailid" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Username</label></td>
<td><form:input path="username" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><form:password path="password" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><form:input path="contactno" required="required"/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Register" class="button"></td>
</tr>

</table>

</form:form>



</body>
</html>

 
