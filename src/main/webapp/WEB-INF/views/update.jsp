<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="head-meta.jsp"/>

<style>
body { 
 background: url("resources/images/2.jpg") no-repeat center center fixed; 
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;

}
</style>

</head>
<body>
<c:import url="head.jsp"/>

<br><br><br>

<form:form action="${pageContext.request.contextPath}/updateproduct" method="post" modelAttribute="newproduct" enctype="multipart/form-data">
 
 <form:input type="hidden" path="productId"  />

<table class="table" style="width:60%;margin:auto;background-color:grey;font-family:Monotype Corsiva">

<tr>
	<td><h3>Enter Product Name : </h3></td>
	<td><form:input type="text" placeholder="name" path="productName" />
	</td>
</tr>

<tr>
	<td><h3>Enter Product Description : </h3></td>
	<td><form:input type="text" placeholder="description" path="productDescription"/>
	</td>
</tr>

<tr>
	<td><h3>Enter Product Category : </h3></td>
	<td><form:input type="text" placeholder="category" path="productCategory"/>
	</td>
</tr>

<tr>
	<td><h3>Enter Product Quantity : </h3></td>
	<td><form:input type="text" placeholder="quantity" path="productQty"/>
	</td>
</tr>

<tr>
	<td><h3>Enter Product Price : </h3></td>
	<td><form:input type="text" placeholder="price" path="productPrice"/>
	</td>
</tr>



<tr>
	<td>
	<form:label path="productImage" for="productImage"><h3> Product Image </h3></form:label>
		<label class="form-control"><span id="file_display1">Choose Image</span><span style="position: relative; ">
		<form:input path="productFile" onchange="changeFileDisplay1();" type="file" style="opacity:0;" class="form-control"  id="imageFile1"/></span></label>
			<script type="text/javascript">
			function changeFileDisplay1()
			{
				document.getElementById("file_display1").innerHTML = $('#imageFile1').val();;
			}
			</script>
	</td>
</tr>

<tr>
	<td><input type="submit" value="Update" class="btn btn-success btn-lg"></td>
</tr>

</table>
</form:form>

</body>
</html>
