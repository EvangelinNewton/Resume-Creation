<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body
{
	background-image:url("professional.jpg");
	background-size: cover;
}

#one
{
position:absolute;
top:200px;
left:500px;
padding:20px;
width:30%;
text-align:center;
font-size:20px;
background-color:white;
}
</style>

<body >
<%
String a=" ";
if(request.getAttribute("output")!=null)
{
	a=request.getAttribute("output").toString();
}
%>
<%=a%>


<div id="one">
<form action="Login" method="post">
  <label for="user_name" >NAME     </label>
  <input type="text" name="user_name"><br>
  <label for="email">E-MAIL      </label>
  <input type="text" name="email"><br>
  <label for="num">CONTACT      </label>
  <input type="text" name="num"><br>
  <input type="radio" name="gender" value="male">
  <label for="male">MALE</label>
  <input type="radio" name="gender" value="female">
  <label for="female">FEMALE</label><br><br>
  <input type="submit" value="REGISTER">
</form>
</div>
<%=a%>
</body>
</html>