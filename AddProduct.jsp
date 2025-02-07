<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Added</title>
</head>
<body><center><h1>
	<%
		AdminBean abean=(AdminBean)session.getAttribute("abean");
		String msg=(String)request.getAttribute("msg");
		
		out.println("Mr."+abean.getaFname()+" "+msg+"<br><br>");
		
	%>
	<a href="AddProduct.html">Add Product</a><br><br>
	<a href="view1">View Product</a><br><br>
	<a href="logout1">Logout</a><br><br>
	

</h1>
</center>
<style>
  /* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body Styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    text-align: center;
}

/* Message Container */
h1 {
    background-color: white;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    width: 400px;
    text-align: center;
}

/* Welcome Text */
h1 span {
    color: #007bff;
    font-weight: bold;
}

/* Links Styling */
a {
    text-decoration: none;
    font-size: 18px;
    font-weight: bold;
    color: white;
    background-color: #007bff;
    padding: 10px 20px;
    border-radius: 5px;
    display: inline-block;
    transition: 0.3s;
    margin: 10px;
}

a:hover {
    background-color: #0056b3;
}

/* Logout Button */
a[href="logout1"] {
    background-color: #dc3545;
}

a[href="logout1"]:hover {
    background-color: #b02a37;
}
</style>
</body>
</html>