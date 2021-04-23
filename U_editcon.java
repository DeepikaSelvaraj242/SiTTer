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


@WebServlet("/U_editcon")
public class U_editcon extends HttpServlet 
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
		    PreparedStatement st = con.prepareStatement("update u_db set u_name=?,u_childname=?,u_childdob=?,u_childage=?,u_relation=?,u_childgender=?,u_city=?,u_mobile=?,u_password=?,u_address=? where u_email=?");
		    st.setString(1,fname);
		    st.setString(2,childname);
		    st.setString(3,dob);
		    st.setString(4,age);
		    st.setString(5,relation);
		    st.setString(6,gender);
		    st.setString(7,city);
		    st.setString(8,mobile);
		    st.setString(9,password);
		    st.setString(10,address);
		    st.setString(11,email);
		    int x=st.executeUpdate();
		    if (x>0)
		    {
		    	System.out.println("User edit Success");
		    	response.sendRedirect("http://localhost:8080/siTTer/login.jsp");
		    }
		    else
		    {
		    	System.out.println("Fail");
		    	response.sendRedirect("http://localhost:8080/siTTer/U_edit.jsp");
		    }
		    con.close();
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}
