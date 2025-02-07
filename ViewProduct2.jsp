<%@page import="pack1.CustomerBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewProduct2 jsp</title>

</head>
<body><center><h1>
	<%
		String msg=(String)request.getAttribute("noPurchase");
		
		if(msg==null){
			
		}
		else{
			out.println(msg);
		}
		CustomerBean cb=(CustomerBean)session.getAttribute("cb");
		ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("al");
		Iterator<ProductBean> i=al.iterator();
		out.println("<p>Hello "+cb.getcFname()+"!</p> <br><br>");
		
		while(i.hasNext()){
			ProductBean pb=i.next();
			out.println(pb.getpCode()+" "+pb.getpName()+" "+pb.getpCompany()+" "+pb.getpPrice()+" "+pb.getpQuantity()
			+" <u><a href='buy?pcode="+pb.getpCode()+"'>Buy</a></u><br><br>");
			
		}
	
	%>
	<a href="logout1" >Logout </a>

</h1></center>
<style>
   body {
        font-family: Arial, sans-serif;
        text-align: center;
        background-color: #f4f4f4;
    }
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background: #fff;
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
    }
    th, td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: center;
    }
    th {
        background-color: #007bff;
        color: white;
    }
    a {
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
    }
    a:hover {
        text-decoration: underline;
    }
    .logout-btn {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background: red;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }
    .logout-btn:hover {
        background: darkred;
    }
</style>
</style>

</body>
</html>