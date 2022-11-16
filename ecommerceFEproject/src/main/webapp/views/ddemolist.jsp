<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
  padding-top: 70px;
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


</Style>
 
 <body>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: #022604;">
            <a class="navbar-brand" href="#"><b>Online Shopping</b></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
             </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            
            <li class="nav-item active">
  			<button type="button" class="btn btn-success">Manage Product</button>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/">Home</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Cart</a>
            </li>  
          </ul> 
        </div>
   </nav>

 
</head>
<body>

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
<h5 align="center"><font><strong>View all the Products Here</strong></font></h5>
<table id="example" class="table table-striped " cellspacing="0" width="100%">
  <thead>
<tr>
<td><strong>Name</strong></td>
<td><strong>Details</strong></td>
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
<td><img src="<%=resultSet.getString("Image") %>" style="width:300px;height:200px;"></td>
<td><strong>Name: <%=resultSet.getString("Name") %><br>
Brand: <%=resultSet.getString("Brand") %><br>
Description: <%=resultSet.getString("Description") %><br>
Quantity: <%=resultSet.getInt("Quantity") %><br>
Category: <%=resultSet.getString("Category") %><br>
Supplier: <%=resultSet.getString("Supplier") %><br>
Cost: <%=resultSet.getDouble("Cost") %></strong></td>
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
</body>
</html>