package mypack;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


@WebServlet("/C_registercon")
public class C_registercon extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	PrintWriter out;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String fname=request.getParameter("name");
		String email=request.getParameter("email");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String city=request.getParameter("city");
		String mobile=request.getParameter("mobile");
		String password=request.getParameter("password");
		String from=request.getParameter("fromtime");
		String to=request.getParameter("totime");
		
		try
		{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con=dbo.getConnection();
		    PreparedStatement st = con.prepareStatement("insert into C_DB values(?,?,?,?,?,?,?,?,?)");
		    st.setString(1,fname);
		    st.setString(2,email);
		    st.setString(3,dob);
		    st.setString(4,gender);
		    st.setString(5,city);
		    st.setString(6,mobile);
		    st.setString(7,password);
		    st.setString(8,from);
		    st.setString(9,to);
		    int x=st.executeUpdate();
		    if (x>0)
		    {
		    	System.out.println("Caretaker registration Success");
		    	response.sendRedirect("http://localhost:8080/siTTer/login.jsp");
		    }
		    else
		    {
		    	System.out.println("Fail");
		    	response.sendRedirect("http://localhost:8080/siTTer/C_register.jsp");
		    }
		    con.close();
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}
