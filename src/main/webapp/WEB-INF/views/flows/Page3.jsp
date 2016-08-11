<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="/head-meta" />


<style>

	body	{
	
		background: url("resources/images/image9.jpg");
	
	
	}

</style>

</head>
<body>
<br><br><br><br>

<h1 style="text-align:center;font-family:Monotype Corsiva;font-size:80px;color:white"><b>Page3</b></h1>
<c:import url="/head" />



<a href="${flowExecutionUrl}&_eventId=BackToConfirmDetails" class="btn btn-danger btn-lg btn pull-left">
<span class="glyphicon glyphicon-chevron-left"></span> Previous</a>

<a href="${flowExecutionUrl}&_eventId=ConfirmOrder" class="btn btn-success btn-lg btn pull-right">
Next  <span class="glyphicon glyphicon-chevron-right"></span></a>



</body>
</html>