
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body
{
padding-left:15%;
padding-right:15%;

}

.name_bar
{
width:50%;
float:left;
margin-top:-3.5%;
margin-left:-4.5%;
 }
.address_bar
{
width:50%;
float: right;
margin-top:-3.5%;
margin-right:-4%;

 }
.address_bar > ul
{
list-style-type:none;
text-align: right;
}

.table1 th{
text-align:left;
}

</style>

</head>
<body>
<%

String s_mail=session.getAttribute("ses_email")!=null?session.getAttribute("ses_email").toString():" ";

System.out.println(s_mail);

String name=" ";
String email=" ";
String contact=" ";
String career=" ";
String address=" ";
String degree=" ";
String percent=" ";
String hsc=" ";
String sslc=" ";
String p_o=" ";
String p_ohsc=" "; 
String p_osslc=" ";
String tech=" ";
String achieve=" ";
String father=" ";
String dob=" ";
String lang=" ";
String marry=" ";
String nation=" ";
String religion=" ";
String interest=" ";
String dec=" ";
String pro=" ";
String gender=" ";
String org=" ";
String org1=" ";
String org2=" ";
String yr="2018";
		Connection con = null;
		Class.forName("org.postgresql.Driver");
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/project", "postgres","admin");
		Statement st = con.createStatement();
		ResultSet rs=st.executeQuery("select * from form where email_id='"+s_mail+"'");
				
		if(rs.next())
		{
		name = rs.getString("name");
		email =rs.getString("email_id");
		contact =rs.getString("contact");
		career =rs.getString("career_objective");
		address =rs.getString("address");
		degree =rs.getString("degree");
		percent =rs.getString("percent");
		hsc =rs.getString("hsc");
		sslc =rs.getString("sslc");
		p_o =rs.getString("passed_out");
		p_ohsc =rs.getString("passed_out hsc");
		p_osslc =rs.getString("passed_out sslc");
		tech =rs.getString("technical_skills");
		achieve =rs.getString("achievements");
		father =rs.getString("father_name");
		dob =rs.getString("date_of_birth");
		lang =rs.getString("languages_known");
		marry =rs.getString("marital_status");
		nation =rs.getString("nationality");
		religion =rs.getString("religion");
		interest =rs.getString("interest");
		dec =rs.getString("declaration");
		pro =rs.getString("project");
		gender =rs.getString("gender");
		org =rs.getString("org");
		org1 =rs.getString("org1");
		org2 =rs.getString("org2");
		}
		 %>
<div style="border:5px solid black;width:100%;">
<div style="padding:6%;border-bottom:2px solid black;">
<div class="name_bar">
<h1><%=name %></h1>
</div>
<div class="address_bar">
<ul>
<li>Address:<%=address%></li>
<li>Email:<%=email %></li>
<li>Phone:<%=contact %></li>
</ul>
</div>
</div>

<div style="padding:20px;">
<h3><u>CAREER OBJECTIVES:</u></h3>
<div style="text-align:justify;">
<%=career %>
</div>

<div>
<h3><u>EDUCATIONAL QUALIFICATION:</u></h3>
<table border="3">
  <tr>
    <th>DEGREE</th>
    <th>ORGANIZATION</th>
    <th>PERCENTAGE</th>
    <th>YEAR OF PASSING</th>
  </tr>
  <tr>

    <td style="text-align:center"><%=degree %></td>
    <td style="text-align:center"><%=org %></td>
    <td style="text-align:center"><%=percent %></td>
    <td style="text-align:center"><%=p_o %></td>
  </tr>
  <tr> 
    <td style="text-align:center">HSC</td>
    <td style="text-align:center"><%=org1 %></td>
    <td style="text-align:center"><%=hsc%></td>
  	<td style="text-align:center"><%=p_ohsc%></td>
  </tr>
   <tr>
    <td style="text-align:center">SSLC</td>
   <td style="text-align:center"><%=org2 %></td>
    <td style="text-align:center"><%=sslc%></td>
  	<td style="text-align:center"><%=p_osslc%></td>
  </tr>

</table>
</div>
</div>

<div style="padding:20px;">
<h3><u>TECHNICAL SKILLS:</u></h3>
<div style="padding-left:20px;">
<%=tech%>
</div>
</div>

<div style="padding:20px;">
<h3><u>ACHIEVEMENTS</u></h3>
<%=achieve %>
</div>

<div style="padding:20px;">
<h3><u>PROJECT DETAILS </u></h3>
<%=pro %>

</div>

<div style="padding:20px;">
<h3><u>PERSONAL DETAILS</u></h3>
<table class="table1">
  <tr>
    <th>Father Name </th>
    <td><%=father %></td>
    </tr>
    
    <tr>
    <th>Date Of Birth </th>
    <td><%=dob %></td>
    </tr>
    
    <tr>
    <th>Language Known</th>
    <td><%=lang %></td>
    </tr>
    
    <tr>
    <th>Marital Status</th>
    <td><%=marry %></td>
    </tr>
    
    <tr>
    <th>Nationality</th>
    <td><%=nation %></td>
    </tr>
    
    <tr>
    <th>Religion </th>
    <td><%=religion %></td>
    </tr>
    
    <tr>
    <th>Interest </th>
    <td><%=interest %></td>
    </tr>
    
</table>

<div>
<h3><u>DECLARATION</u></h3>
<div style="text-align:justify;">
<%=dec %>
</div>
<% 
Date d =new Date();
int date=d.getDate();
int mon=d.getMonth()+1;
int yrr=d.getYear();
%>
<div>
<div></div>
<h5> DATE:<%=date %>/<%=mon %>/<%=yr %></h5>
<h5> PLACE:</h5>

</div>

</div>
</div>
</div>

</body>
</html>