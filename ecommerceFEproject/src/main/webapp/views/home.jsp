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
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Lobster"/>
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Monsieur La Doulaise" />
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Great Vibes" />

<style>
	body {
  padding-top: 90px;
  background-color: #ccf2bc;
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
h2{
font-family: Great Vibes;
}


.manage{
color: black;
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
h4{
color: darkgreen;
}
.modalform{
color: darkgreen;
}

.list-group-item{
background-color: #022604;
color: white; 
border-color: white;
}

hr{
background-color:#54bfbf;
height:3px;
}

u{
  text-decoration-line: underline ;
  text-decoration-style: double;
  text-decoration-color: #42f456;
}
</Style>


</head>
<body>
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
   <div class="container-fluid">
   <div class="row" >

        <div class="col-lg-3">
        <hr>
          <h2 class="my-4">Products Category</h2>
         <hr>
          <div class="list-group">
            <a href="${pageContext.request.contextPath}/viewlaptop" class="list-group-item">Laptop</a>
            <a href="${pageContext.request.contextPath}/viewMobile" class="list-group-item">Mobile</a>
            <a href="${pageContext.request.contextPath}/viewTelevision" class="list-group-item">Television</a>
          </div>
        </div>
   
   <div class="col-lg-9">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="<%=request.getContextPath()%>/images/top1.jpg" alt="First slide" width=100%; height=700px;>
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="<%=request.getContextPath()%>/images/top2.jpg" alt="Second slide" width=100% height=700px;>
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="<%=request.getContextPath()%>/images/top3.jpg" alt="Third slide" width=100% height=700px;>
              </div>
            </div>
            
           <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
   </div>
</div>
</div>
<hr>
<div class="container-fluid">
<div class="card-deck">
  <div class="card text-white bg-dark">
    <img class="card-img-top" style="height:300px;" src="<%=request.getContextPath()%>/images/cardmob.jpg" alt="Card image cap">
    <div class="card-body" style="backgroung-color:#010716; color:white; ">
      <h5 class="card-title">Mobiles</h5>
      <p class="card-text">"The mobile device has become our communications hub, our diary, our entertainment portal, our primary source of media consumption, our wallet and our gateway to real-time information tailored to our needs. The revolution is now!"</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Go buy it!</small>
    </div>
  </div>
  <div class="card text-white bg-dark">
    <img class="card-img-top" style="height:300px;" src="<%=request.getContextPath()%>/images/cardtv.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Television</h5>
      <p class="card-text-white bg-dark">"Our goal with our TVs is to give the best experience to the consumer, whether they are looking for cord-cutting or looking for that set-top box."</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Go buy it!</small>
    </div>
  </div>
  <div class="card text-white bg-dark">
    <img class="card-img-top" style="height:300px;" src="<%=request.getContextPath()%>/images/cardlap.jpg" alt="Card image cap">
    <div class="card-body "style="backgroung-color:#0f0e0e; color:white; height:300px;">
      <h5 class="card-title">Laptops</h5>
      <p class="card-text">"End-users, not technologies, shape the market. Consequently, marketers need to stay abreast not only of technological developments but also of the way people respond to them."</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Go buy it!</small>
    </div>
  </div>
</div>
</div>
  <hr>
  <hr>
   
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