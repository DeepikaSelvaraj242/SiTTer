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
    <title>Welcome</title>
    
    <!-- Favicon -->
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
                                        <li><a class="smoth-scroll" href="http://localhost:8080/siTTer/login.jsp">LOGIN</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="http://localhost:8080/siTTer/C_register.jsp">SIGNUP AS CARETAKER</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="http://localhost:8080/siTTer/U_register.jsp">SIGNUP AS USER</a>
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
                
                 <div class="col-sm-offset-1 col-md-5 col-sm-6 margin-left-setting">
                    <div class="margin-top-150">
                        <div class="logo">
                        	<h1 style="color:#4c9cef;">WELCOME TO SITTER....!</h1>
                        	<h2 style="color:#f7639a;">  A babysitter Hiring </h2>
                        	<h2 style="color:#f7639a;">      application     </h2>
                        </div>
                     </div>
                   </div>
                 
                 <div class="col-md-5 col-sm-6">
                    <div class="me-image">
                      <img src="images/bg/profile.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>
        </section>
        <!-- Home Section End -->
</body>
</html>