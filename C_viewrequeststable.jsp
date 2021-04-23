<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@page import="mypack.dbo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>

<head>
    <title>WebRes - Personal Resume Template</title>
    
    <!-- Favicon -->
    <link rel="shortcut icon" href="images/favicon/favicon.ico">
    <link rel="apple-touch-icon" sizes="144x144" type="image/x-icon" href="images/favicon/apple-touch-icon.png">
    
    <!-- All CSS Plugins -->
    <link rel="stylesheet" type="text/css" href="css/plugin.css">
    
    <!-- Main CSS Stylesheet -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    <!-- Google Web Fonts  -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700">
    
    
    <!-- HTML5 shiv and Respond.js support IE8 or Older for HTML5 elements and media queries -->
    <!--[if lt IE 9]>
	   <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
 </head>
 
 <body>
 <% 
	int i=0;
	String mymail="18tuit021@skct.edu.in";
	String umail="";
	String date="";
	String from="";
	String to="";
	String work1="";
	String work2="";
	String work3="";
	String work4="";
	String work5="";
	try
	{
    	Connection con= dbo.getConnection();
    	PreparedStatement st = con.prepareStatement("select u_email,date,fromtime,totime,work1,work2,work3,work4,work5,status from requests where c_email=?;");
    	st.setString(1,mymail);
    	ResultSet rs=st.executeQuery();
%>

    <!-- Menu Section Start -->
    <header id="home">
        <div class="header-top-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="logo">
                            <a href="index-2.html">siTTer</a>
                        </div>
                    </div>
                    
                    <div class="col-sm-9">
                        <div class="navigation-menu">
                            <div class="navbar">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>
                                <div class="navbar-collapse collapse">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active"><a class="smoth-scroll" href="#home">Home <div class="ripple-wrapper"></div></a>
                                        </li>
                                        <li><a class="smoth-scroll" href="#about">About</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="#portfolio">Portfolio</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="#testimonials">Testimonial</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="#services">services</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="#contact">Contact</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </header>
     
     <!-- Menu Section End -->  
     <!-- Home Section Start -->
     
    <section class="home-section">
        <div class="container">
            <div class="row">
                 <div class=" col-md-12 col-sm-6 margin-left-setting">
                    <div class="margin-top-150">
						    <table class="table">
						    <thead class="table-header-group">
								<th></th>
							    <th>MAIL</th>
								<th>DATE</th>
								<th>FROM</th>
								<th>TO</th>
								<th>WORKS</th>
							 </thead>
						    <tboby>
						    <%
					 	  	while(rs.next())
					    	{
					 	  		umail=rs.getString(1);
					 	  		date=rs.getString(2);
					 	  		from=rs.getString(3);
					 	  		to=rs.getString(4);
					 	  		work1=rs.getString(5);
					 	  		work2=rs.getString(6);
					 	  		work3=rs.getString(7);
					 	  		work4=rs.getString(8);
					 	  		work5=rs.getString(9);
					 	  		i++;
					 	  	%>
							<tr>
									<td ><%out.println(i);%></td>
								    <td><%out.println(umail);%></td>
									<td><%out.println(date);%></td>
									<td><%out.println(from);%></td>
									<td><%out.println(to);%></td>
									<td>
										<div><%out.println(work1);%></div>
										<div><%out.println(work2);%></div>
										<div><%out.println(work3);%></div>
										<div><%out.println(work4);%></div>
										<div><%out.println(work5);%></div>
									</td>
							 </tr>
							 <%
					    	}
						%>
						</tboby>
						</table>
						<%
						}
						catch(Throwable e)
						{
							e.printStackTrace();
						} %>
                     </div>
                   </div>
              </div>
            </div>
        </section>
        <section id="contact" class="section-space-padding">
       <div class="container">
          <div class="row">
                <div class="col-sm-12">
                    <div class="section-title">
                        <h2>VIEW..</h2>
                          <div class="divider dark">
						 </div>
                    </div>
                </div>
            </div>
            
         
         <div class="margin-top-30 margin-bottom-50">
           <div class="row">
           
             <div class="col-md-offset-3 col-sm-offset-2 col-md-6 col-sm-8">   
                 
               <div class="row">
                  <form class="contact-us pattern-bg" action="viewuserprofile.jsp">
                  	
                       <div class="col-sm-12">
					    <div class="form-group">
						  <label>EMAIL ID</label>
						 <input type="email" name="email" id="email" class="form-control" placeholder="Search Email" required>
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                    <div class="text-center">      
		               <button type="submit" class="button button-style button-style-dark button-style-color-2">View</button>
	                  </div>
	                  
                  </form>
                   
                </div>
			  </div>
            </div>
           
        
        </div>
       </div>
     </section>
        <!-- Home Section End -->
</body>
</html>