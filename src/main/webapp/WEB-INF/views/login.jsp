<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<c:import url="head-meta.jsp"/>

<style>

body 
{ 
 background: url("resources/images/FreeGreatPicture.com-1552-background-color.jpg") no-repeat center center fixed; 
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
}

.panel-default {
 opacity: 0.9;
 margin-top:30px;
}
.form-group.last {
 margin-bottom:0px;
}

</style>

</head>

<body>
	<c:import url="head.jsp"/>
<br><br><br><br><br>


		
<div class="container">
<div class="row">
<div class="col-lg-10 col-centered">
	<div class="table-responsive">
	
	<div class="col-md-offset-4">
		<c:url var="loginUrl" value="/login" />
					    	<form action="login" method="POST">
  							
					    		
					    		<c:if test="${param.error != null}">
	                                <div class="alert alert-danger">
	                                    <p>Invalid Username and password.</p>
	                                </div>
	                            </c:if>
	                            
	                            <c:if test="${param.logout != null}">
	                                <div class="alert alert-success">
	                                    <p>You have been logged out successfully.</p>
	                                </div>
	                            </c:if>
					    	
	
	
	
	
	
	
	 <table style="width: 80%" class="table center" style="margin: 0px auto;">
		<tr>
            <td colspan="2" align="center" style="font-family:Monotype Corsiva"><h1 style="color:brown"><b>Login</b></h1></td>
        </tr>
	<tr>
	<td><h3 style="color:black">Username : <input type="text" class="form-control" id="username" name="username" style="color:black" autofocus="true" required /></h3></td>
	
	<td class="alert alert-danger"></td>
	</tr>
	
								  	
	<tr>
	
	<td><h3 style="color:black">Password : <input type="text"  class="form-control" id="password" name= "password" style="color:black" autofocus="true" required /></h3></td>
	
	<td class="alert alert-danger"></td>

	</tr>
							  	
	<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
							  	
	<tr>
	<td colspan="2" >
	<div class="row">
	<div class="col-md-2 col-md-offset-5"> 
	<button type="submit" class="btn btn-success btn-md">Submit</button>
	</div>
	</div>
	</td>
	</tr>
							  	

							  	
	</table>
	</form>

</div>
</div>

</div>
</div>
</div>

