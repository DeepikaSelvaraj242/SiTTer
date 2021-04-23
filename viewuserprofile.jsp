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
	String uname="";
	String childname="";
	String uemail="";
	String childdob="";
	String childage="";
	String relation="";
	String childgender="";
	String city="";
	String mobile="";
	String password="";
	String address="";
	
	String umail1="";
	String cmail1="";
	String date1="";
	String from1="";
	String to1="";
	String work1="";
	String work1s="";
	String work2="";
	String work2s="";
	String work3="";
	String work3s="";
	String work4="";
	String work4s="";
	String work5="";
	String work5s="";
	String status="";
	
	//session.setAttribute(arg0, arg1)
	try
	{
    	Connection con= dbo.getConnection();
    	PreparedStatement st1 = con.prepareStatement("select * from u_db where u_email=?;");
    	st1.setString(1,mail);
    	ResultSet rs1=st1.executeQuery();
 	  	if(rs1.next())
    	{
 	  		uname=rs1.getString(1);
 	  		childname=rs1.getString(2);
 	  		uemail=rs1.getString(3);
 	  		childdob=rs1.getString(4);
 	  		childage=rs1.getString(5);
 	  		relation=rs1.getString(6);
 	  		childgender=rs1.getString(7);
 	  		city=rs1.getString(8);
 	  		mobile=rs1.getString(9);
 	  		password=rs1.getString(10);
 	  		address=rs1.getString(6);
    		System.out.println("Viewing profile of user : "+mail);
    	}
 	  	PreparedStatement st2 = con.prepareStatement("select * from requests where u_email=? and c_email=?;");
    	st1.setString(1,mail);
    	st1.setString(1,"vijiselvaraj27@gmail.com");
    	ResultSet rs2=st2.executeQuery();
 	  	if(rs2.next())
    	{
 	  		 umail1=rs2.getString(1);
 	  		 cmail1=rs2.getString(2);
 	  		 date1=rs2.getString(3);
 	  		 from1=rs2.getString(4);
 	  		 to1=rs2.getString(5);
 	  		 work1=rs2.getString(6);
 	  		 work1s=rs2.getString(7);
 	  		 work2=rs2.getString(8);
 	  		 work2s=rs2.getString(9);
 	  		 work3=rs2.getString(10);
 	  		 work3s=rs2.getString(11);
 	  		 work4=rs2.getString(12);
 	  		 work4s=rs2.getString(13);
 	  		 work5=rs2.getString(14);
 	  		 work5s=rs2.getString(15);
 	  		 status=rs2.getString(16);
    		System.out.println("Viewing profile of user : "+mail);
    	}
	}
	catch(Throwable e)
	{
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
								<td><label><%out.println(uname);%></label></td>
							 </tr>
							 <tr>
							    <td>Child Name</td>
								<td><label><%out.println(childname);%></label></td>
							 </tr>
                             <tr>
								<td>Email</td>
								<td><%out.println(mail);%></td>
							</tr>
							<tr>
								<td>Child Date of Birth</td>
								<td><%out.println(childdob);%></td>
							 </tr>
							 <tr>
								<td>Child Age</td>
								<td><%out.println(childage);%></td>
							 </tr>
							 <tr>
								<td>Relation</td>
								<td><%out.println(relation);%></td>
							 </tr>
							<tr>
								<td>Gender</td>
								<td><%out.println(childgender);%></td>
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
							    <td>Address</td>
								<td><%out.println(address);%></td>
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
                       <div class="col-sm-12">
					    <div class="form-group">
						 <label>TO EMAIL ID</label>
						 <input type="email" name="email" id="email" class="form-control" value=<%out.println(umail1);%> disabled>
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
						<div class="col-sm-12">
					    <div class="form-group">
						 <label>DATE</label>
						 	<input type="date" name="date" id="date" class="form-control" min="2021-03-30" max="2021-04-03" value=<%out.println(date1);%>disabled required>
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
                        <div class="col-sm-12">
                        <label>TIME</label>
                        </div>
                        	<div class="col-sm-6">
					    		<div class="form-group">
						 		<label>From</label>
						 		<input type="time" name="from" id="from" class="form-control" value=<%out.println(from1);%> disabled required>
						 		<span id="maillocation" style="color:red"></span>
						 	</div>
                        	</div>	
                        	<div class="col-sm-6">
					    		<div class="form-group">
						 		<label>To</label>
						 		<input type="time" name="to" id="to" class="form-control" value=<%out.println(to1);%> disabled required>
						 		</div>
                        	</div>
                        	
                        <div class="col-sm-8">
					    <div class="form-group">
						  <label>WORKS</label>
						  <label>Work 1</label>
						 <input type="text" name="work1" id="work1" class="form-control" value=<%out.println(work1);%> disabled>
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
                        <div class="col-sm-4">
						  <label>Work 1 status</label>
						  <select name="work1status" id="gender" class="form-group form-control" value=<%out.println(work1s);%> required>
							<option>completed</option>
							<option>pending</option>
						   </select>
                          </div>
                          

                        <div class="col-sm-8">
					    <div class="form-group">
						  <label>Work 2</label>
						 <input type="text" name="work2" id="work1" class="form-control" value=<%out.println(work2);%> disabled>
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
                        <div class="col-sm-4">
						  <label>Work 2 status</label>
						  <select name="work2status" id="gender" class="form-group form-control" value=<%out.println(work2s);%> required>
							<option>completed</option>
							<option>pending</option>
						   </select>
                          </div>
                          
                        <div class="col-sm-8">
					    <div class="form-group">
						  <label>Work 3</label>
						 <input type="text" name="work3" id="work1" class="form-control" value=<%out.println(work3);%> disabled >
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
                        <div class="col-sm-4">
						  <label>Work 3 status</label>
						  <select name="work3status" id="gender" class="form-group form-control" value=<%out.println(work3s);%> required>
							<option>completed</option>
							<option>pending</option>
						   </select>
                          </div>
                          
                        <div class="col-sm-8">
					    <div class="form-group">
						  <label>Work 4</label>
						 <input type="text" name="work4" id="work1" class="form-control" value=<%out.println(work4);%> disabled>
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
                        <div class="col-sm-4">
						  <label>Work 4 status</label>
						  <select name="work4status" id="gender" class="form-group form-control" value=<%out.println(work4s);%> required>
							<option>completed</option>
							<option>pending</option>
						   </select>
                          </div>

                          
                        <div class="col-sm-8">
					    <div class="form-group">
						  <label>Work 5</label>
						 <input type="text" name="work5" id="work1" class="form-control" value=<%out.println(work5);%> disabled>
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
                        
                        <div class="col-sm-4">
						  <label>Work 5 status</label>
						  <select name="work5status" id="gender" class="form-group form-control" value=<%out.println(work5s);%> required>
							<option>completed</option>
							<option>pending</option>
						   </select>
                          </div>

						<div class="col-sm-12">
						  <label>Work 5 status</label>
						  <select name="status" id="gender" class="form-group form-control" value=<%out.println(status);%> required>
							<option disabled>pending</option>
							<option>accept</option>
							<option>reject</option>
						   </select>
                        </div>
                        
                    <div class="text-center">      
		               <button type="submit" class="button button-style button-style-dark button-style-color-2">Save</button>
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