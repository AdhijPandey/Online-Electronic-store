<%@page import="pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Home jsp</title>


</head>
<body><center><h1>
	<%
		CustomerBean cbean=(CustomerBean)session.getAttribute("cb");
		String msg=(String)request.getAttribute("msg");
		out.println("Welcome "+ cbean.getcFname()+"!!! <br><br>");
	%>

	<a href="view2">View Products</a><br><br>
	<a href="logout1">Logout</a><br><br>

</h1></center>
<style>
 * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body Styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    text-align: center;
    padding-top: 50px;
}

/* Heading Styling */
h1 {
    color: #333;
}

/* Link Styling */
a {
    font-size: 18px;
    color: #007bff;
    text-decoration: none;
    margin: 10px;
    display: inline-block;
}

a:hover {
    text-decoration: underline;
}
</style>
</body>
</html>