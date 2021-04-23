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


@WebServlet("/C_editcon")
public class C_editcon extends HttpServlet 
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
		    Connection con=dbo.getConnection();
		    PreparedStatement st = con.prepareStatement("update C_DB set c_name=?,c_dob=?,c_gender=?,c_city=?,c_mobile=?,c_password=?,c_fromtime=?,c_totime=? where c_email=?;");
		    st.setString(1,fname);
		    st.setString(2,dob);
		    st.setString(3,gender);
		    st.setString(4,city);
		    st.setString(5,mobile);
		    st.setString(6,password);
		    st.setString(7,from);
		    st.setString(8,to);
		    st.setString(9,"18tuit021@skct.edu.in");
		    int x=st.executeUpdate();
		    if (x>0)
		    {
		    	System.out.println("Caretaker registration Success");
		    	response.sendRedirect("http://localhost:8080/siTTer/C_view.jsp");
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
