

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Resume
 */
@WebServlet("/Resume")
public class Resume extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Resume() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 //response.getWriter().append("Served at: ").append(request.getContextPath());
	try
	{
		
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
		Date today = new Date();
		Date todayWithZeroTime = formatter.parse(formatter.format(today));
		System.out.println(todayWithZeroTime);
		String career=request.getParameter("career");
		String name=request.getParameter("name");
		String contact=request.getParameter("contact");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String education=request.getParameter("education");
		String org=request.getParameter("org");
		String percent=request.getParameter("percent");
		String year=request.getParameter("year");
		String education1=request.getParameter("education1");	
		String org1=request.getParameter("org1");
		String year1=request.getParameter("year1");
		String edu=request.getParameter("edu");
		String org2=request.getParameter("org2");
		String year2=request.getParameter("year2");
		String technical=request.getParameter("technical");
		String project=request.getParameter("project");
		String achievements=request.getParameter("achievements");
		String father=request.getParameter("father");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String language=request.getParameter("language");
		String marital=request.getParameter("marital");
		String nationality=request.getParameter("nationality");
		String religion=request.getParameter("religion");
		String interest=request.getParameter("interest");
		String declare=request.getParameter("declare");
		
		
		Connection con = null;
		Class.forName("org.postgresql.Driver");
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/project", "postgres","admin");
		Statement st = con.createStatement();
		ResultSet rs=st.executeQuery("select * from form where name='"+name+"'or email_id='"+email+"' or contact='"+contact+"'");
		if(rs.next())
		{
			RequestDispatcher rd=request.getRequestDispatcher("Application_form.jsp");
			request.setAttribute("output","USER DETAILS ALREADY EXISTS");
			rd.include(request, response);
			
		}
		else
		{
			Connection con1 = null;
			Class.forName("org.postgresql.Driver");
			con1 = DriverManager.getConnection("jdbc:postgresql://localhost:5432/project", "postgres","admin");
			Statement st1 = con1.createStatement();
			st1.executeUpdate("insert into form values('"+career+"','"+name+"','"+contact+"','"+address+"','"+education+"','"+org+"','"+percent+"','"+education1+"','"+org1+"','"+edu+"','"+org2+"','"+year+"','"+year1+"','"+year2+"','"+technical+"','"+achievements+"','"+project+"','"+father+"','"+dob+"','"+language+"','"+gender+"','"+marital+"','"+nationality+"','"+religion+"','"+interest+"','"+declare+"','"+email+"','"+todayWithZeroTime+"')");
			RequestDispatcher rd=request.getRequestDispatcher("User_login.jsp");
			request.setAttribute("output","USER UPDATED");
			rd.include(request, response);
			rs.close();
			con1.close();
			st1.close();
		
		}
	
	
	}
	catch(Exception e)
	{
		System.out.println(e.getMessage());
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
