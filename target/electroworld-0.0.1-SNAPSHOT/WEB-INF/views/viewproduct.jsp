<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<c:import url="head-meta.jsp"/>
</head>
<body>

	<c:import url="head.jsp"/>

<br><br><br><br><br>

<form action="viewproduct" method="post" modelAttribute="newproduct">
<table align="center" >

<tr><td>Product Name</td><td>${ProductName}</td></tr>

<tr><td>Product Qty</td><td>${ProductQty}</td></tr>
<tr><td>Product Price</td><td>${ProductPrice}</td></tr>

<tr><td>Product Description</td><td>${ProductDescription}</td></tr>

<tr><td>Product Category</td><td>${ProductCategory}</td></tr>


</table>

</form>
</body>
</html>