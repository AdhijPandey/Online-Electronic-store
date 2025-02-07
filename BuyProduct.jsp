<%@page import="java.util.ArrayList"%>
<%@page import="pack1.CustomerBean"%>
<%@page import="pack1.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy Product jsp</title>

</head>
<body><center><h1>
		<%
		CustomerBean cb=(CustomerBean)session.getAttribute("cb");
		ProductBean pb=(ProductBean)request.getAttribute("pbean");
		ArrayList<ProductBean> al = (ArrayList<ProductBean>)request.getAttribute("al");
	    String msg = (String) request.getAttribute("invalid");
	
	    //if (msg != null) {
	      //  out.println(msg+"<br><br>");
	    //}
	
	    //if (pb == null) {
	%>
	      <!--     <p style="color:red;">Product details are not available.</p>
	-->
	<%
	    //} else {
	%>
	    <form action="buyProduct" method="post">
	        Product Code <input type="text" name="pCode" value="<%=pb.getpCode() %>" readonly="readonly"><br><br>
	        Product Name <input type="text" name="pName" value="<%=pb.getpName() %>" readonly="readonly"><br><br>
	        Product Company <input type="text" name="pCompany" value="<%=pb.getpCompany() %>" readonly="readonly"><br><br>
	        Product Price <input type="text" name="pPrice" value="<%=pb.getpPrice() %>" readonly="readonly"><br><br>
	        Product Quantity <input type="text" name="pQty" value="<%=pb.getpQuantity() %>" readonly="readonly"><br><br>
	        Required No. <input type="number" name="reqNo" required><br><br>
	
	        <input type="submit" value="Buy">
	    </form>
	<%
	  // }
	%>






</h1>
</center>
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
        background-color: #007bff;
        color: white;
    }
    input[type="number"], input[type="text"] {
        width: 90%;
        padding: 8px;
        margin-top: 5px;
    }
    .buy-btn {
        background: green;
        color: white;
        padding: 10px 15px;
        border: none;
        cursor: pointer;
        font-size: 16px;
        border-radius: 5px;
    }
    .buy-btn:hover {
        background: darkgreen;
    }
    .error-msg {
        color: red;
        font-weight: bold;
    }
</style>
</body>
</html>