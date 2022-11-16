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
</head>
<body>
<%@ page import="java.sql.*" %>

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
PreparedStatement ps = null;
ResultSet resultSet = null;
%>
<%
try{ 
	String id =request.getParameter("pId"); 
	String name = request.getParameter("pName");
	String brand=request.getParameter("pBrand");
	String description=request.getParameter("pDesc");
	String cost=request.getParameter("pCost");
	String quantity=request.getParameter("pQty");
	String image=request.getParameter("pImg");
	String category=request.getParameter("cName");
	String supplier=request.getParameter("sName");

connection = DriverManager.getConnection(connectionUrl+dbName, username, password);

int Id = Integer.parseInt(id);
double ct=Double.parseDouble(cost);
int quant = Integer.parseInt(quantity);

String sql="Update Product set Product_id=?,Name=?,Brand=?,Description=?,Cost=?,Quantity=?,Image=?,Category=?,Supplier=? where Product_id=?";

ps = connection.prepareStatement(sql);

ps.setInt(1,Id);
ps.setString(2, name);
ps.setString(3, brand);
ps.setString(4, description);
ps.setDouble(5, ct);
ps.setInt(6,quant);
ps.setString(7, image);
ps.setString(8, category);
ps.setString(9, supplier);
ps.setInt(10, Id);
ps.executeUpdate();
String redirectURL = "success.jsp";
response.sendRedirect(redirectURL);	


%>
}
<% 

} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>