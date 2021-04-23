package mypack;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/logcon")
public class logcon extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	PrintWriter out;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email=request.getParameter("email");
		String password=request.getParameter("password");

		try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con=dbo.getConnection();
		    PreparedStatement st1 = con.prepareStatement("select c_email from c_db where c_email=? and c_password=?");
		    st1.setString(1,email);
		    st1.setString(2,password);
		    ResultSet rs1=st1.executeQuery();
		    if(rs1.next())
		    {
		    	HttpSession session=request.getSession();
		    	session.setAttribute("mymail", email);
		    	System.out.println("Caretaker login Success");
		    	response.sendRedirect("http://localhost:8080/siTTer/login.jsp");
		    }
		    else
		    {
		    	PreparedStatement st2 = con.prepareStatement("select u_city from u_db where u_email=? and u_password=?");
			    st2.setString(1,email);
			    st2.setString(2,password);
			    ResultSet rs2=st2.executeQuery();
			    if(rs2.next())
			    {
			    	String city=rs2.getString(1);
			    	HttpSession session=request.getSession();
			    	session.setAttribute("mymail", email);
			    	session.setAttribute("mycity", city);
			    	System.out.println("User login Success");
			    	response.sendRedirect("http://localhost:8080/siTTer/U_viewcaretakertable.jsp");
			    }
			    else
			    {
			    	System.out.println("Failed");
			    	response.sendRedirect("http://localhost:8080/siTTer/C_register.jsp");
			    }
		    }
		    con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
