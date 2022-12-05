<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<style>
.emp{
background-color: greenyellow;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;}
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
  background-color: greenyellow;
  border: none;
  color: blue;
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


<br>

<h3 align=center>Welcome&nbsp;<c:out value="${euname}"></c:out></h3>

<br>

<h3 align=center><u>Change Password</u></h3>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>

<form method="post" action="updateemppwd">

<table align=center>

<tr>
<td><label>Old Password</label></td>
<td><input type="password" name="eopwd" required></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>New Password</label></td>
<td><input type="password" name="enpwd" required></td>
</tr>

<tr><td></td></tr>

<tr align=center>

<td>
 <div class="emp">
<a href="employeehome">Back</a>

</div>

<td colspan="2"><input type="submit" value="Update" class="button"></td>

</tr>

</table>

</form>

</body>
</html>

 
