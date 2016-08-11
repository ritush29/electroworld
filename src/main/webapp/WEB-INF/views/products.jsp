<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<c:import url="head-meta.jsp"/>

<style>
body {
   background : url('resources/images/image9.jpg');

}





input[type=text] {
    
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    color: darkblack;
    background-color: white;
    background-image: url('resources/images/searchicon.png');
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}
input[type=text]:focus {
    width: 50%;
} 

</style>
</head>


<script type="text/javascript">

var myApp=angular.module('myApp',[]);

myApp.controller("myCtrl",function($scope)
		{
			$scope.data = ${data};
		});
</script>

<body ng-app="myApp" ng-controller="myCtrl">
 
	<c:import url="head.jsp"/>
 
<!-- {{data.ProductID}}

<input type="text" ng-model="data.ProductID" />

{{data.ProductName}}
<input type="text" ng-model="data.ProductName" />
		 
{{data.ProductPrice}}
<input type="text" ng-model="data.ProductPrice" />		
 -->

<br><br>	
		
<br> 		
 		<div class="container">
 		<div class="col-md-offset-11">
 		
 			<a href="addproduct"><button type="button" class="btn btn-success btn-lg">Add Product</button></a>
		
		</div>
	 </div>
	 <form align="center">
 <input type="text" placeholder="Search Products..." ng-model="search" />
 </form>
 <br><br>
	

	<div class="container">
		
		<table class="table" style="background-color:white; width:70%; margin:auto;">	

		<tr ng-repeat="x in data |  filter:search">
	
			<td>{{x.ProductID}}</td>
			<td>{{x.ProductName}}</td>
			<td>{{x.ProductPrice}}</td>
			<td> <img ng-src="${pageContext.request.contextPath}/{{ x.flag }}" height=" 150px" width="200px"  ></td>
	
			<td>
				
				<a href="${pageContext.request.contextPath}/viewproduct/{{x.ProductID}}" class="btn btn-info">View Product</a><br><br>
 				<a href="${pageContext.request.contextPath}/update/{{x.ProductID}}" class="btn btn-warning">Update Product</a><br><br>
 				<a href="${pageContext.request.contextPath}/delete/{{x.ProductID}}"><button type="button" class="btn btn-danger">Delete Product</button></a>
 			</td>
	
			
		</tr>
	</table>
</div>

</body>
