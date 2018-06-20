<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
#two
{
border:5px solid green;
float:left;
width:100%;
text-align:center;
font-size:30px;
}

</style>
<body>
<div id="two">
<br>
<form action="Application" method="post">
<label for="email">EMAIL-ID</label>
<input type="text" name="email"><br>
<label for="password">PASSWORD</label>
<input type="text" name="password"><br><br>
<input type="submit" value="SIGN IN">
</form>
</div>
<%
String a=" ";
if(request.getAttribute("output")!=null)
{
	a=request.getAttribute("output").toString();
}
%>
<%=a%><br>
<br>
<a href="User_resume.jsp">
<button>FORM RESUME USING DETAILS</button>
</a>

</body>
</html>