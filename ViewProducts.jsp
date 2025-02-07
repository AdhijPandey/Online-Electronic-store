<%@page import="java.util.Iterator"%>
<%@page import="pack1.AdminBean"%>
<%@page import="pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products View</title>
</head>
<body><center><h1>
	<%
		AdminBean abean=(AdminBean)session.getAttribute("abean");
		ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("ProductList");

		out.println("<u><i>Hello "+abean.getaFname()+", These is your Product Details </u></i><br><br>");
		
		if(al.size()==0){
			out.println("Products are NOT Available!! <br><br>");	
		}
		else{
			Iterator<ProductBean> i=al.iterator();
			while(i.hasNext()){
				ProductBean pb=i.next();
				out.println(pb.getpCode()+" "+pb.getpName()+" "+pb.getpCompany()+" "+pb.getpPrice()+" "+pb.getpQuantity()
				+" <a href='edit1?pcode="+pb.getpCode()+"'> Edit</a>"+" "
				
				+"<a href='delete1?pcode="+pb.getpCode()+"'>Delete</a>"
				
				+"<br><br>");
				
				
				
			}
		}
	
	%>
	<a href="logout1">Logout</a>



</h1></center>
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
}

/* Container */
.container {
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    width: 80%;
    max-width: 800px;
    text-align: center;
}

/* Heading */
h1 {
    color: #333;
    font-size: 24px;
    margin-bottom: 20px;
}

/* Table Styling */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
    font-size: 16px;
}

th {
    background-color: #007bff;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

/* Action Links */
a {
    text-decoration: none;
    font-size: 16px;
    font-weight: bold;
    padding: 6px 12px;
    border-radius: 5px;
    transition: 0.3s;
}

a[href^="edit1"] {
    background-color: #ffc107;
    color: black;
}

a[href^="edit1"]:hover {
    background-color: #e0a800;
}

a[href^="delete1"] {
    background-color: #dc3545;
    color: white;
}

a[href^="delete1"]:hover {
    background-color: #b02a37;
}

/* Logout Button */
a[href="logout1"] {
    display: block;
    margin-top: 20px;
    background-color: #28a745;
    color: white;
    padding: 10px 20px;
    width: fit-content;
    margin-left: auto;
    margin-right: auto;
}

a[href="logout1"]:hover {
    background-color: #218838;
}
</style>
</body>
</html>