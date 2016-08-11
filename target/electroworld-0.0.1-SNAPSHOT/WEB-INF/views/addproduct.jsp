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
	
	
<div class="container" >
<form:form method="post" action="insertproduct" modelAttribute="newproduct">    
        <table font-size:10>    
         <tr>    
          <td>Name : </td>   
          <td><form:input path="productName" placeholder="Enter product name" /></td>  
         </tr>    
         <tr>    
          <td>Price :</td>    
          <td><form:input path="productPrice" placeholder="Enter product price" /></td>  
         </tr>   
         <tr>    
          <td>Description :</td>    
          <td><form:input path="productDescription" placeholder="Enter product description" /></td>  
         </tr>  
         
           <tr>    
          <td>Category :</td>    
          <td><form:input path="productCategory" placeholder="Enter product category" /></td>  
         </tr>  
         
           <tr>    
          <td>Quantity :</td>    
          <td><form:input path="productQty" placeholder="Enter product quantity" /></td>  
         </tr>  
           
         
           
         <tr>    
          <td colspan="2"><input type="submit" value="Add" /></td>    
         </tr>    
        </table>    
       </form:form>    
</div>
 
</body>
</html>