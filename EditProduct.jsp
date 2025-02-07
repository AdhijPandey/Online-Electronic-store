<%@page import="pack1.ProductBean"%>
<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product Details</title>
</head>
<body><center><h1>
	<%
		AdminBean abean=(AdminBean)session.getAttribute("abean");
		ProductBean pb=(ProductBean)request.getAttribute("pbean");
		out.println("Hello "+abean.getaFname()+", "+pb.getpName()+" product details are available for edit<br><br>");
		
	
	%>
	<form action="update1" method="post">
		Product Price <input type="text" name="pPrice" value="<%=pb.getpPrice() %>"><br><br>
		Product Quantity <input type="text" name="pQty" value=" <%=pb.getpQuantity() %>"><br><br>
		<input type="hidden" name="pcode"  value="<%=pb.getpCode() %>">
		
		<input type="submit" value="Update">
	</form>




</h1>
</center>
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
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Container */
.container {
    background-color: white;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    width: 400px;
    text-align: center;
}

/* Heading */
h1 {
    color: #333;
    font-size: 22px;
    margin-bottom: 20px;
}

/* Form Styling */
form {
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* Input Fields */
input[type="text"] {
    width: 90%;
    padding: 8px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* Submit Button */
input[type="submit"] {
    background-color: #007bff;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}
</style>
</body>
</html>