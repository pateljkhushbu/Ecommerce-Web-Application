<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></head>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Lobster" />
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Monsieur La Doulaise" />
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Great Vibes" />
<style>
body{
  background-image: url('<%=request.getContextPath()%>/images/log4.jpg');
  background-repeat: x-repeat; 
  background-size: cover; 
  background-position: center;
  padding-top: 90px;
}

.carousel-item{
    height: 400px;
} 
.carousel-item img{
    height: 400px;
}
b{
font-family: Monsieur La Doulaise;
font-size: 40px;

}

.list-group-item{
background-color: #022604;
color: white; 
border-color: white;
}

h4{
color: darkgreen;
}

.sign-in{
color: white;
margin: 0px auto;
padding: 35px;
max-width: 600px;
margin-top: 80px;
border: 4px solid;
}
h1{
font-family: Lobster;
margin: center;
font-size: 50px;
}
u{
  text-decoration-line: underline ;
  text-decoration-style: double;
  text-decoration-color: #42f456;
}
</style>

</head>
<body>
<%@page import="java.sql.ResultSet"%>
<div class="container-fluid">
<div class="sign-in" >
<h1>Sign In</h1>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: #022604;">
            <a class="navbar-brand" href="#"><b>Online Shopping</b></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
             </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">

            
            <li class="nav-item">
              <a class="nav-link active" href="${pageContext.request.contextPath}/"><u><big>Home</big></u></a>
            </li>
            <pre>  </pre>
            <li class="nav-item ">
              <a class="nav-link active" href="${pageContext.request.contextPath}/aboutus"><u><big>About</big></u></a>
            </li>
                        <pre>  </pre>
				 <li class="nav-item">
              <a class="nav-link active" href="${pageContext.request.contextPath}/contact"><u><big>Contact</big></u></a>
            </li>
                                    <pre>  </pre>
            <li class="nav-item">
            <div class="container">
              <div class="dropdown" >
              <button class="btn dropdown-toggle text-white" style="background-color:#10ba16;" type="button" data-toggle="dropdown">Login<span class="caret"></span></button>
              <ul class="dropdown-menu" style="background-color:#10ba16; border:solid 3px; text-align:center;">
     		 <li><a href="${pageContext.request.contextPath}/signup" class="text-white">Sign Up</a></li>
             <hr style="background-color:black;" ></hr>
      		<li><a href="${pageContext.request.contextPath}/signinad" class="text-white">Sign In</a></li>
    		</ul>
	</div>
    </div>
            </li>
                      <pre>  </pre>
                <li class="nav-item">
  			<a href="${pageContext.request.contextPath}/viewprodpage" class="btn text-white" style="background-color:#10ba16;" role="button" >View Products</a>	
            </li>

          </ul> 
        </div>
   </nav>
<% String d=request.getParameter("Cost");
session.setAttribute("Final_price", d);
%>

<form method="post" action="${pageContext.request.contextPath}/signin">
		<div class="form-group">
		<label for="user" class="label">Username</label>
		<input id="user" type="text" class="form-control" placeholder="Username" name="uName"><br>
		</div>
		<div class="form-group">
		<label for="pass" class="label">Password</label>
		<input id="pass" type="password" class="form-control" data-type="password" placeholder="Password" name="uPass"><br>
		</div>
		<div class="form-group">
		<input type="submit" class="form-control btn-primary" value="Sign In"><br>
		<strong><a href="${pageContext.request.contextPath}/signup">Don't have an account?</a></strong>
		</div>
 </form>
  </div>
 </div>
 <footer class="page-footer bootom-fixed" style="background-color:#045e56; color:black;">

    <div style="background-color: #022604; color:white">
      <div class="container">

        <!-- Grid row-->
        <div class="row py-4 d-flex align-items-center" >

          <!-- Grid column -->
          <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0" style="color: white;">
            <h6 class="mb-0">Get connected with us!</h6>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <!-- Grid column -->

        </div>
        <!-- Grid row-->

      </div>
    </div>

    <!-- Footer Links -->
    <div class="container text-center text-md-left mt-5">

      <!-- Grid row -->
      <div class="row mt-3">

        <!-- Grid column -->
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

          <!-- Content -->
          <h6 class="text-uppercase font-weight-bold">Online Shopping</h6>
          <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p>We aim for the best. Experience the most amazing services proovided by us. Buy the from the most trusted brand.</p>

        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

          <!-- Links -->
          <h6 class="text-uppercase font-weight-bold">Products</h6>
          <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p>
            <a href="${pageContext.request.contextPath}/viewlaptop">Laptops</a>
          </p>
          <p>
            <a href="${pageContext.request.contextPath}/viewTelevision">Television</a>
          </p>
          <p>
            <a href="${pageContext.request.contextPath}/viewMobile">Mobile</a>
          </p>

        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

          <!-- Links -->
          <h6 class="text-uppercase font-weight-bold">Useful links</h6>
          <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p>
            <a href="${pageContext.request.contextPath}/viewprodpage">All Product List</a>
          </p>
          <p>
            <a href="${pageContext.request.contextPath}/aboutus">About us</a>
          </p>
          <p>
            <a href="${pageContext.request.contextPath}/contact">Contact us</a>
          </p>

        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

          <!-- Links -->
          <h6 class="text-uppercase font-weight-bold">Contact</h6>
          <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p>
            <i class="fas fa-home mr-3"></i> New York, NY 10012, US</p>
          <p>
            <i class="fas fa-envelope mr-3"></i> info@example.com</p>
          <p>
            <i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
          <p>
            <i class="fas fa-print mr-3"></i> + 01 234 567 89</p>

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row -->

    </div>
    <!-- Footer Links -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2019 Copyright:
      <a href="${pageContext.request.contextPath}/"> OnlineShopping.com</a>
    </div>
    <!-- Copyright -->

  </footer>
  <!-- Footer -->
   
</body>
</html>