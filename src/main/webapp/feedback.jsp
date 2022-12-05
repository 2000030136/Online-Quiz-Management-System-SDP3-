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

<h1 align=center>Online Quiz Management System</h1>


	
<br>

<h3 align=center><u>Feedback form</u></h3>


<br>


<form:form action="addfeedback" method="post" modelAttribute="fdbk">

<table align=center>

<tr>
<td><label>Username</label></td>
<td>
<form:input path="usrnm" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>
<tr>
<td><label>Rating</label></td>
<td>
<form:input path="rating" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>
<tr>
<td><label>Feedback</label></td>
<td>
<form:input path="feedback" required="required"></form:input>
</td>
</tr>


<tr><td></td></tr>

<tr><td></td></tr>




<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Feedback" class="button"></td>
</tr>

</table>

</form:form>



</body>
</html>