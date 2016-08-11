<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<c:import url="head-meta.jsp"/>
	
	
<style>

body { 
 background: url("resources/images/Accenture-rewritting.GIF") no-repeat center center fixed; 
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;

}

</style>
</head>
<body>
	<c:import url="head.jsp"/>
	<br><br><br><br>
	
	
<div class="container" >
<div class="row">
<div class="col-md-offset-4">
<div class="col-lg-12 col-centered">
<div class="table-responsive">


<div class="col-md-offset-2">
<form:form method="post" action="insertproduct" modelAttribute="newproduct" enctype="multipart/form-data">    
        <h1 style="font-family:Monotype Corsiva;color:white"><b>You want to add..?</b></h1>
        <br><br>
        <table class="table" style="width: 60%" style="margin: 0px auto;">   
         <tr>    
          <td style="color:white">Name : </td>   
          <td><form:input path="productName" placeholder="Enter product name" /></td>  
         </tr>    
         <tr>    
          <td style="color:white">Price :</td>    
          <td><form:input path="productPrice" placeholder="Enter product price" /></td>  
         </tr>   
         <tr>    
          <td style="color:white">Description :</td>    
          <td><form:input path="productDescription" placeholder="Enter product description" /></td>  
         </tr>  
         
           <tr>    
          <td style="color:white">Category :</td>    
          <td><form:input path="productCategory" placeholder="Enter product category" /></td>  
         </tr>  
         
           <tr>    
          <td style="color:white">Quantity :</td>    
          <td><form:input path="productQty" placeholder="Enter product quantity" /></td>  
         </tr>  
           
           <tr>
							  		<td><form:label path="productImage" for="productImage"> Product Image:</form:label></td>
							  		<td>
							  		
							  			<label class="form-control"><span id="file_display1">Choose Image</span><span style="position: relative; "><form:input path="productFile" onchange="changeFileDisplay1();" type="file" style="opacity:0;" class="form-control"  id="imageFile1"/></span></label>
							  		
								  		<script type="text/javascript">
								  			
								  			function changeFileDisplay1()
								  			{
								  				document.getElementById("file_display1").innerHTML = $('#imageFile1').val();;
								  			}
								  		
								  		</script>
							  		
									</td>
							  	</tr>
        
        
           
           
          <tr>
         <td colspan="5"><input type="submit" class="btn btn-success btn-lg btn-add" value="Add"/></td>    
         </tr>    
        </table>    
       </form:form>    
</div>
</div>
</div>
 </div>
</div>
</div>
</body>
</html>