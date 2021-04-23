package mypack;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


@WebServlet("/U_sendrequestcon")
public class U_sendrequestcon extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String umail=request.getSession().getAttribute("mymail").toString();
		//String cmail=request.getSession().getAttribute("requestcaretaker").toString();
		String cmail=request.getParameter("email");
		String date=request.getParameter("date");
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String work1=request.getParameter("work1");
		String work2=request.getParameter("work2");
		String work3=request.getParameter("work3");
		String work4=request.getParameter("work4");
		String work5=request.getParameter("work5");
		String status="pending";

		try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con=dbo.getConnection();
		    PreparedStatement st = con.prepareStatement("insert into requests values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		    st.setString(1,umail);
		    st.setString(2,cmail);
		    st.setString(3,date);
		    st.setString(4,from);
		    st.setString(5,to);
		    st.setString(6,work1);
		    st.setString(7,"pending");
		    st.setString(8,work2);
		    st.setString(9,"pending");
		    st.setString(10,work3);
		    st.setString(11,"pending");
		    st.setString(12,work4);
		    st.setString(13,"pending");
		    st.setString(14,work5);
		    st.setString(15,"pending");
		    st.setString(16,status);
		    int x=st.executeUpdate();
		    if (x>0)
		    {
		    	System.out.println("Request sent");
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
