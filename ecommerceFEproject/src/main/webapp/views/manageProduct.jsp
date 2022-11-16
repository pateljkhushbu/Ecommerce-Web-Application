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
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
 <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css">
 <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">


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
</head>
<body>
<div class="container-fluid">
<div class="manage" >
<h1>Manage Products</h1>
<form method="post" action="${pageContext.request.contextPath}/manageProduct">
		<div class="form-group row">
		<label class="col-lg-3 label">Name</label>
              <div class="col-lg-8">

		<input type="text" class="form-control" placeholder="Name" name="pName">
		</div>
        </div>
        
        <div class="form-group row">
		<label class="col-lg-3 label">Brand</label>
              <div class="col-lg-8">

		<input type="text" class="form-control" placeholder="Brand" name="pBrand">
		</div>
        </div>
		<div class="form-group row">
		<label class="col-lg-3 label">Description</label>
              <div class="col-lg-8">

		<textarea class="form-control" name="pDesc">
        </textarea>
		</div>
        </div>
		<div class="form-group row">
		<label class="col-lg-3 label">Price</label>
              <div class="col-lg-8">

		<input type="number" class="form-control" placeholder="0.0" name="pCost">
		</div>
        </div>
		<div class="form-group row">
		<label class="col-lg-3 label">Quantity</label>
              <div class="col-lg-8">

		<input type="number" class="form-control" placeholder="0" name="pQty">
		</div>
        </div>
		<div class="form-group row">
		<label class="col-lg-3 label">Enter Image Name</label>
              <div class="col-lg-8">
		<input type="text" class="form-control" name="pImg">
		</div>
        </div>
		
        <div class="form-group row">
		<label class="col-lg-3 label">Category</label>
        <div class="col-lg-8">
		<input type="text" class="form-control" placeholder="Category" name="cName">
		</div>
        </div>
        
        <div class="form-group row">
		<label class="col-lg-3 label">Supplier</label>
        <div class="col-lg-8">
		<input type="text" class="form-control" placeholder="Supplier" name="sName">
		</div>
        </div>
        
		<div class="form-group">
		<input type="submit" class="form-control btn-success" value="Save"><br>
	</div>
	</form>
	</div>
</div>



<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "org.h2.Driver";
String connectionUrl = "jdbc:h2:tcp://localhost/~/";
String dbName = "EcommerceDB";
String username = "sa";
String password = "sa@123";

try {
Class.forName("org.h2.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<hr><h2 align="center"><font><strong>To update,delete and view data from database</strong></font></h2><hr>
<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%" style="table-border: black;">
  <thead>
<tr>
<td><strong>Id</strong></td>
<td><strong>Name</strong></td>
<td><strong>Brand</strong></td>
<td><strong>Description</strong></td>
<td><strong>Cost</strong></td>
<td><strong>Quantity</strong></td>
<td><strong>Image</strong></td>
<td><strong>Category</strong></td>
<td><strong>Supplier</strong></td>
<td>Update/edit</td>
<td>Delete</td>
</tr>
</thead>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM Product";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Product_id")%></td>
<td><%=resultSet.getString("Name") %></td>
<td><%=resultSet.getString("Brand") %></td>
<td><%=resultSet.getString("Description") %></td>
<td><%=resultSet.getDouble("Cost") %></td>
<td><%=resultSet.getInt("Quantity") %></td>
<td><img src="<%=request.getContextPath()%>/images/<%=resultSet.getString("Image")%>" width="50" height="50"></td>
<td><%=resultSet.getString("Category") %></td>
<td><%=resultSet.getString("Supplier") %></td>

<td>  <a href="${pageContext.request.contextPath}/listup?Product_id=<%=resultSet.getString("Product_id")%>" type="button" class="btn" style="background-color:blue; color:black;">update</a></td>
<td>  <a href="${pageContext.request.contextPath}/listdp?Product_id=<%=resultSet.getString("Product_id")%>" type="button" class="btn" style="background-color:red; color:black;">delete</a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
  <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src=" https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
  <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap4.min.js"></script>
 
  <script>
  $(document).ready(function() {
	    var table = $('#example').DataTable();
	 		responsive:true;
	    	} ); 
  

  </script>
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