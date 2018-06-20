

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//	response.getWriter().append("Served at: ").append(request.getContextPath());
	
		try
		{
	String name=request.getParameter("user_name");
	String email_id=request.getParameter("email");
	String phone=request.getParameter("num");
	Connection con = null;
	Class.forName("org.postgresql.Driver");
	con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/project", "postgres","admin");
	Statement st = con.createStatement();
	ResultSet rs=st.executeQuery("select * from register where name='"+name+"'or email_id='"+email_id+"' or phone_no='"+phone+"'");
		if(rs.next())
		{
			RequestDispatcher rd=request.getRequestDispatcher("Test.jsp");
			request.setAttribute("output","USER ALREADY EXISTS");
			rd.include(request, response);
			
		}
		else
		{
			Connection con1 = null;
			Class.forName("org.postgresql.Driver");
			con1 = DriverManager.getConnection("jdbc:postgresql://localhost:5432/project", "postgres","admin");
			Statement st1 = con1.createStatement();
			st1.executeUpdate("insert into register values('"+name+"','"+email_id+"','"+phone+"')");
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
