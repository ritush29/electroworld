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

<br><br><br>

<form action="viewproduct" method="post" modelAttribute="newproduct">
<table class="table" style="width:60%;margin:auto;background-color:grey;font-family:Monotype Corsiva">

<tr>    
 	 <td colspan="2" align="center">
 	 <img src="${pageContext.request.contextPath}/${ProductImg}" width="40%" class="img img-responsive img-thumbnail"></td>  
 </tr> 



<tr>
	<td><h3>Product Name </h3></td>
	<td><h3>${ProductName} </h3></td>
</tr>

<tr>
	<td><h3>Product Quantity </h3></td>
	<td><h3>${ProductQty} </h3> </td>
</tr>

<tr>
	<td><h3>Product Price </h3></td>
	<td><h3>${ProductPrice} </h3></td>
</tr>

<tr>
	<td><h3>Product Description </h3></td>
	<td><h3>${ProductDescription} </h3></td>
</tr>

<tr>
	<td><h3>Product Category </h3></td>
	<td><h3>${ProductCategory}</h3></td>
</tr>

 </table>

</form>
</body>
</html>