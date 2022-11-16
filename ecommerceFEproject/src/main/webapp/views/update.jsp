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
 <style>
 
 body {
  padding-top: 90px;
  background-color: #ccf2bc;
}
 .update{
color: black;
margin: 0px auto;
padding: 35px;
max-width: 600px;
margin-top: 80px;
border: 4px solid;

}
 </style>
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
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String id =request.getParameter("Product_id"); 


String sql ="SELECT * FROM Product where Product_id="+id;

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<div class="container-fluid">
<div class="update" >
<h1>Update Products</h1>
<form action="${pageContext.request.contextPath}/updateProcess?Product_id=<%=resultSet.getString("Product_id")%>" method="POST">
		<div class="form-group row">
		<input type="hidden" name="id" value="<%=resultSet.getString("Product_id")%>">
		<label class="col-lg-3 label">Id</label>
              <div class="col-lg-8">

		<input type="text" class="form-control" placeholder="Name" name="pId" value="<%=resultSet.getString("Product_id") %>">
		</div>
        </div>
		
		<div class="form-group row">
		<label class="col-lg-3 label">Name</label>
              <div class="col-lg-8">

		<input type="text" class="form-control" placeholder="Name" name="pName" value="<%=resultSet.getString("Name") %>">
		</div>
       	</div>
        
        <div class="form-group row">
		<label class="col-lg-3 label">Brand</label>
              <div class="col-lg-8">

		<input type="text" class="form-control" placeholder="Brand" name="pBrand" value="<%=resultSet.getString("Brand")%>">
		</div>
        </div>
		<div class="form-group row">
		<label class="col-lg-3 label">Description</label>
              <div class="col-lg-8">

		<textarea class="form-control" name="pDesc"><%=resultSet.getString("Description")%></textarea>
		</div>
        </div>
		<div class="form-group row">
		<label class="col-lg-3 label">Price</label>
              <div class="col-lg-8">

		<input type="number" class="form-control" placeholder="0.0" name="pCost" value="<%=resultSet.getDouble("Cost") %>">
		</div>
        </div>
		<div class="form-group row">
		<label class="col-lg-3 label">Quantity</label>
              <div class="col-lg-8">

		<input type="number" class="form-control" placeholder="0" name="pQty" value="<%=resultSet.getInt("Quantity")%>">
		</div>
        </div>
		<div class="form-group row">
		<label class="col-lg-3 label">Enter Image name</label>
              <div class="col-lg-8">
		<input type="text" class="file-custom-input form-control" name="pImg" value="<%=resultSet.getString("Image")%>">
		</div>
        </div>
		
        <div class="form-group row">
		<label class="col-lg-3 label">Category</label>
        <div class="col-lg-8">
		<input type="text" class="form-control" placeholder="Category" name="cName" value="<%=resultSet.getString("Category")%>">
		</div>
        </div>
        
        <div class="form-group row">
		<label class="col-lg-3 label">Supplier</label>
        <div class="col-lg-8">
		<input type="text" class="form-control" placeholder="Supplier" name="sName" value="<%=resultSet.getString("Supplier")%>">
		</div>
        </div>
        
		<div class="form-group">
		<input type="submit" class="form-control btn-success" value="Update"><br>
	</div>
    </form>
</div>
</div>
<% }

} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>