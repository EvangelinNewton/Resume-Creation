<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RESUME</title>
</head>
<style>
#two
{
border:5px solid green;
float:left;
width:100%;
text-align:center;
font-size:20px;
}
</style>
<body> 

<%
String a=" ";
if(request.getAttribute("output")!=null)
{
	a=request.getAttribute("output").toString();
}
%>
<%=a%>

<a href="User_resume.jsp">VIEW RESUME</a>

<div id="two">
<form action="Resume" method="post">
<label>APPLICATION FORM</label><br><br>
<label for="career">Career Objective                           </label>
<input type="text" name="career"><br><br>
<label for="name">Name                           </label>
<input type="text" name="name"><br><br>
<label for="contact">Contact                     </label>
<input type="text" name="contact"><br><br>
<label for="email">Email_Id                      </label>
<input type="text" name="email"><br><br>
<label for="address">Address                     </label>
<input type="text" name="address"><br><br>
<label> EDUCATIONAL QUALIFICATION </label><br><br><br>
<label for="education">Degree                  	</label>
<input type="text" name="education">
<label for="org">Organization					</label>
<input type="text" name="org">
<label for="percent">Percentage					</label>
<input type="text" name="percent">
<label for="year">Year of passing               </label>
<input type="text" name="year"><br><br>
<label for="education1">HSC                      </label>
<input type="text" name="education1"> 
<label for="org1">Organization					</label>
<input type="text" name="org1">
<label for="year1">Year of passing               </label>
<input type="text" name="year1"><br><br>
<label for="edu">SSLC                           </label>
<input type="text" name="edu">
<label for="org2">Organization					</label>
<input type="text" name="org2">
<label for="year2">Year of passing               </label>
<input type="text" name="year2"><br><br>
<label for="technical">Techinal Skills           </label>
<input type="text" name="technical"><br><br>
<label for="project">Project                   </label>
<input type="text" name="project"><br><br>
<label for="achievement">Achievements            </label>
<input type="text" name="achievements"><br><br><br>
<label>PERSONAL DETAILS</label><br><br>
<label for="father">Father Name                  </label>
<input type="text" name="father"><br><br>
<label for="dob">Date Of Birth                   </label>
<input type="text" name="dob"><br><br>
<input type="radio" name="gender" value="male" checked>
<label for="male">MALE</label>
<input type="radio" name="gender" value="female">
<label for="female">FEMALE</label><br><br>
<label for="language">Languages Known            </label>
<input type="text" name="language"><br><br>
<label for="marital">Marital Status              </label>
<input type="text" name="marital"><br><br>
<label for="nationality">Nationality             </label>
<input type="text" name="nationality"><br><br>
<label for="religion">Religion                   </label>
<input type="text" name="religion"><br><br>
<label for="interest">Interest                   </label>
<input type="text" name="interest"><br><br> 
<label for="declare">Declaration                   </label>
<input type="text" name="declare"><br><br> 
<input type="submit" value="ADD TO RESUME"><br>
</form>
</div>
</body>
</html>