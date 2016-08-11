<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<c:import url="head-meta.jsp"/>

<style>
body { 
 background: url("resources/images/FreeGreatPicture.com-1552-background-color.jpg") no-repeat center center fixed; 
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;

}
</style>

</head>
<body>
	<c:import url="head.jsp"/>
<br><br><br><br>
<div class="container">
<div class="row">
<div class="col-lg-12 col-centered">
	<div class="table-responsive">
		<c:if test="${not empty passwordmismatch}">
		<br>
			<label class="alert alert-danger">Password Mismatch</label>
		<br>
		</c:if>

		<c:if test="${not empty useralreadyexists}">
		<br>
			<label class="alert alert-danger">UserName Already Exists</label>
		<br>
		</c:if>
		
		<c:if test="${not empty success}">
		<br>
			<label class="alert alert-success">User Created Successfully</label>
		<br>
		</c:if>
	
	
	<div class="col-md-offset-4">
		<form:form action="insertUser" method="POST" modelAttribute="newuser">
	 
        <table style="width: 60%" class="table center" style="margin: 0px auto;">
	<tr>
                    <td colspan="2" align="center"><h1 style="font-family:Segoe Script;color:brown"><b>Sign Up</b></h1></td>
                </tr>
	<tr>
	<td><form:label path="email" for="email" style="color:black"><b>Email address:</b></form:label></td>
	<td><form:input path="email" type="email" class="form-control" id="email" autofocus="true"/></td>
	<td class="alert alert-danger"><form:errors path="email"/></td>
	</tr>
	
	<tr>
	<td><form:label path="username" for="username" style="color:black"><b>UserName:</b></form:label></td>
	<td><form:input path="username" type="text" class="form-control" id="username"/></td>
	<td class="alert alert-danger"><form:errors path="username"/></td>
	</tr>
							  	
	<tr>
	<td><form:label path="password" for="password" style="color:black"><b>Password:</b></form:label></td>
	<td><form:input path="password" type="password" class="form-control" id="password"/></td>
	<td class="alert alert-danger"><form:errors path="password"/></td>
	</tr>
							  	
	<tr>
	<td><form:label path="cPassword" for="cPassword" style="color:black"><b>Confirm Password:</b></form:label></td>
	<td><form:input path="cPassword" type="password" class="form-control" id="cpassword"/></td>
	<td class="alert alert-danger"><form:errors path="cPassword"/></td>
	</tr>
							  	
	<tr>
	<td><form:label path="phone" for="phone" style="color:black"><b>Phone:</b></form:label></td>
	<td><form:input path="phone" type="phone" class="form-control" id="phone"/></td>
	<td class="alert alert-danger"><form:errors path="phone" /></td>
	</tr>
							  	
	<tr>
	<td><form:label path="address" for="address" style="color:black"><b>Address:</b></form:label></td>
	<td><form:textarea path="address" class="form-control" id="address"></form:textarea></td>
	<td class="alert alert-danger"><form:errors path="address" /></td>
	</tr>
							  	
	<tr>
	<td colspan="2" >
	<div class="row">
	<div class="col-md-2 col-md-offset-5"> <button type="submit" class="btn btn-success btn-md">Submit</button> </div>
	</div>
	</td>
	</tr>
							  	
	</table>
	</form:form>
</div>

</div>

</div>
</div>
</div>


				
<br><br><br>
</body>



