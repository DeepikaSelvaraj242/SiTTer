<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
function AlertVariable()
{
	var mail=document.getElementById('email').value;
	var pass=document.getElementById('password1').value;
	var validmail =/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	var validpass=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{8,10}$/;
	var status=false;
	
	if(mail=="")
	{
		document.getElementById("maillocation").innerHTML="<label>Please enter a mail</label>";  
		status=false;
	}
	else
	{
		if(!mail.match(validmail))
		{
			document.getElementById("maillocation").innerHTML="<label>Please enter a valid mail</label>";  
			status=false;
		}
		else
		{
			document.getElementById("maillocation").innerHTML="<label></label>";  
			status=true;
		}
	}
	
	
	if(!(pass.match(validpass)))
	{
		document.getElementById("passlocation").innerHTML="<label>password should contain</label></br><label>* atleast 8 characters</label></br><label>* atleast one uppercase</label></br><label>* atleast one lowercase</label></br><label>* atleast one digit</label></br><label>* atleast one special character(#$^+=!*()@%&)</label>";  
		status=false;
	}
	else
	{
		document.getElementById("passlocation").innerHTML="<label></label>";  
		status=true;
	}
	
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<!DOCTYPE html>
<html>

  <head>
    
    <!-- Meta Tag -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!-- SEO -->
    <meta name="description" content="150 words">
    <meta name="author" content="uipasta">
    <meta name="url" content="http://www.yourdomainname.com">
    <meta name="copyright" content="company name">
    <meta name="robots" content="index,follow">
    
    
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
    
    
    

 </head>

  <body>
    <!-- Menu Section Start -->
    <header id="home">
        
        <div class="header-top-area">
            <div class="container">
                <div class="row">
                
                    <div class="col-sm-3">
                        <div class="logo">
                            <a href="index-2.html" style="font-size: 25px;">siTTer</a>
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
                                        <li><a class="smoth-scroll" href="http://localhost:8080/siTTer/index.jsp">HOME</a>
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
  
    <section id="contact" class="section-space-padding">
       <div class="container">
          <div class="row">
                <div class="col-sm-12">
                    <div class="section-title">
                        <h2>LOGIN..</h2>
                          <div class="divider dark">
						 </div>
                        <p style="font-size:15px;">ENTER THE FOLLOWING CREDENTIALS</p>
                    </div>
                </div>
            </div>
            
         
         <div class="margin-top-30 margin-bottom-50">
           <div class="row">
           
             <div class="col-md-offset-3 col-sm-offset-2 col-md-6 col-sm-8">   
                 
               <div class="row">
                  <form class="contact-us pattern-bg" method="POST" action="logcon">
                  	
                       <div class="col-sm-12">
					    <div class="form-group">
						  <label>EMAIL ID</label>
						 <input type="email" name="email" id="email" class="form-control" placeholder="Your Email" required>
						 <span id="maillocation" style="color:red"></span>
						 </div>
                        </div>
									
						<div class="col-sm-12">
						<div class="form-group">
						  <label>PASSWORD</label>
						  <input type="password"  name="password" id="password1" class="form-control" placeholder="Your Password" required>
						  <span id="passlocation" style="color:red"></span>
						 </div>
                        </div>
                        
                    <div class="text-center">      
		               <button type="submit" class="button button-style button-style-dark button-style-color-2" onclick="return AlertVariable();">Login</button>
	                  </div>
	                  
                  </form>
                   
                </div>
			  </div>
            </div>
           
        
        </div>
       </div>
     </section>
    <a href="#" class="scroll-to-top"><i class="icon-arrow-up-circle"></i></a>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    
    <!-- Main Javascript File  -->
    <script type="text/javascript" src="js/scripts.js"></script>
  
  
  </body>
 </html>
</body>
</html>