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


@WebServlet("/U_registercon")
public class U_registercon extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	PrintWriter out;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String fname=request.getParameter("name");
		String childname=request.getParameter("childname");
		String email=request.getParameter("email");
		String dob=request.getParameter("dob");
		String age=request.getParameter("age");
		String relation=request.getParameter("relation");
		String gender=request.getParameter("gender");
		String city=request.getParameter("city");
		String mobile=request.getParameter("mobile");
		String password=request.getParameter("password");
		String address=request.getParameter("address");

		try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con=dbo.getConnection();
		    PreparedStatement st = con.prepareStatement("insert into u_db values(?,?,?,?,?,?,?,?,?,?,?)");
		    st.setString(1,fname);
		    st.setString(2,childname);
		    st.setString(3,email);
		    st.setString(4,dob);
		    st.setString(5,age);
		    st.setString(6,relation);
		    st.setString(7,gender);
		    st.setString(8,city);
		    st.setString(9,mobile);
		    st.setString(10,password);
		    st.setString(11,address);
		    int x=st.executeUpdate();
		    if (x>0)
		    {
		    	System.out.println("User registration Success");
		    	response.sendRedirect("http://localhost:8080/siTTer/login.jsp");
		    }
		    else
		    {
		    	System.out.println("Fail");
		    	response.sendRedirect("http://localhost:8080/siTTer/U_register.jsp");
		    }
		    con.close();
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}
