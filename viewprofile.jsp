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
	String mail=request.getParameter("email");
	String name="";
	String dob="";
	String gender="";
	String city="";
	String mobile="";
	String password="";
	String from="";
	String to="";
	//session.setAttribute(arg0, arg1)
	try
	{
    	Connection con= dbo.getConnection();
    	PreparedStatement st = con.prepareStatement("select * from c_db where c_email=?;");
    	st.setString(1,mail);
    	ResultSet rs=st.executeQuery();
 	  	if(rs.next())
    	{
 	  		name=rs.getString(1);
 	  		mail=rs.getString(2);
 	  		dob=rs.getString(3);
 	  		gender=rs.getString(4);
 	  		city=rs.getString(5);
 	  		mobile=rs.getString(6);
 	  		password=rs.getString(7);
 	  		from=rs.getString(8);
 	  		to=rs.getString(9);
    		System.out.println("Viewing profile of caretaker : "+mail);
    	}
	}
	catch(Throwable e)
	{
		System.out.println(name);
		e.printStackTrace();
	}
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
                
                 <div class="col-sm-offset-3 col-md-7 col-sm-8 ">
                    <div class="margin-top-150">
                        <form >
                     <div class="table-responsive">
					    <table class="table">
							<tr>
							    <td>Name</td>
								<td><label><%out.println(name);%></label></td>
							 </tr>
                             <tr>
								<td>Email</td>
								<td><%out.println(mail);%></td>
							</tr>
							<tr>
								<td>Date of Birth</td>
								<td><%out.println(dob);%></td>
							 </tr>
							<tr>
								<td>Gender</td>
								<td><%out.println(gender);%></td>
							</tr>
							<tr>
								<td>City</td>
								<td><%out.println(city);%></td>
							</tr>
							<tr>
								<td>Mobile</td>
								<td><%out.println(mobile);%></td>
							</tr>
							<tr>
							    <td>From time</td>
								<td><%out.println(from);%></td>
							 </tr>
                             <tr>
								<td>To time</td>
								<td><%out.println(to);%></td>
							 </tr>
							 
						</table>
					  </div>
					  </form>
					  <div>
					  	</br>
					  </div>
					  <div>
					  <div class="container">
          <div class="row">
                <div class="col-sm-6">
                    <div class="section-title">
                        <h2>REQUEST FORM..</h2>
                          <div class="divider dark">
						 </div>
                    </div>
                </div>
            </div>
         <div class="margin-top-30 margin-bottom-50">
           <div class="row">
           
             <div class="col-sm-6">   
                 
               <div class="row">
                  <form class="contact-us pattern-bg" method="POST" action="U_sendrequestcon">
                       <div class="col-sm-12">
					    <div class="form-group">
						 <label>TO EMAIL ID</label>
						 <input type="email" name="email" id="email" class="form-control" value=<%out.println(mail);%> disabled>
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
						<div class="col-sm-12">
					    <div class="form-group">
						 <label>DATE</label>
						 	<input type="date" name="date" id="date" class="form-control" min="2021-03-30" max="2021-04-03" required>
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
                        <div class="col-sm-12">
                        <label>TIME</label>
                        </div>
                        	<div class="col-sm-6">
					    		<div class="form-group">
						 		<label>From</label>
						 		<input type="time" name="from" id="from" class="form-control" required>
						 		<span id="maillocation" style="color:red"></span>
						 	</div>
                        	</div>	
                        	<div class="col-sm-6">
					    		<div class="form-group">
						 		<label>To</label>
						 		<input type="time" name="to" id="to" class="form-control" required>
						 		</div>
                        	</div>
                        	
						<div class="col-sm-12">
					    <div class="form-group">
						  <label>WORKS</label>
						  <label>Work 1</label>
						 <input type="text" name="work1" id="work1" class="form-control" placeholder="Work 1" >
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
                        <div class="col-sm-12">
					    <div class="form-group">
						  <label>Work 2</label>
						 <input type="text" name="work2" id="work2" class="form-control" placeholder="Work 2" >
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
                        <div class="col-sm-12">
					    <div class="form-group">
						  <label>Work 3</label>
						 <input type="text" name="work3" id="work3" class="form-control" placeholder="Work 3">
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
                        <div class="col-sm-12">
					    <div class="form-group">
						  <label>Work 4</label>
						 <input type="text" name="work4" id="work4" class="form-control" placeholder="Work 4">
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
                        <div class="col-sm-12">
					    <div class="form-group">
						  <label>Work 5</label>
						 <input type="text" name="work5" id="work5" class="form-control" placeholder="Work 5">
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                    <div class="text-center">      
		               <button type="submit" class="button button-style button-style-dark button-style-color-2">Send Request</button>
	                  </div>
                  </form>
                </div>
			  </div>
            </div>
        </div>
       </div>
					  </div>
                     </div>
                   </div>
              </div>
            </div>
        </section>
        <!-- Home Section End -->
</body>
</html>