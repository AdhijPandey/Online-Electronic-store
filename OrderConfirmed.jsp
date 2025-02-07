<%@page import="pack1.CustomerBean"%>
<%@page import="pack1.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Confirmed</title>

</head>
<body><center><h1>
	<%
		CustomerBean cbean=(CustomerBean)session.getAttribute("cb");
			
	//ProductBean pbean=(ProductBean)request.getAttribute("pbean");
		String msg=(String)request.getParameter("Purchased");
		String pName=(String)request.getAttribute("pName");
		String pPrice=(String)request.getAttribute("pPrice");
		
		
	  	out.println("Hello "+cbean.getcFname()+"!! <br><br>");
	  	out.println("You have charged " + pPrice +"rs!! <br><br>");
	  	out.println("Your Order is placed Successfully!! <br><br>");
	%>
	
	<a href="view2">View Products</a><br><br>
	<a href="logout1">Logout</a><br><br>


</h1></center>
<style>
   body {
        font-family: Arial, sans-serif;
        text-align: center;
        background-color: #f4f4f4;
    }
    .container {
        width: 50%;
        margin: 50px auto;
        padding: 20px;
        background: white;
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #28a745;
        color: white;
    }
    .success-msg {
        color: green;
        font-size: 18px;
        font-weight: bold;
    }
    .btn {
        background: #007bff;
        color: white;
        padding: 10px 15px;
        border: none;
        cursor: pointer;
        font-size: 16px;
        border-radius: 5px;
        text-decoration: none;
        margin: 10px;
        display: inline-block;
    }
    .btn:hover {
        background: #0056b3;
    }
</style>

</body>
</html>