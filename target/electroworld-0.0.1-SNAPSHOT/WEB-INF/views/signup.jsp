<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<c:import url="head-meta.jsp"/>

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
					
	<form:form action="insertUser" method="POST" modelAttribute="newuser">
	<table style="width: 80%;" class="table center">
	<tr>
	<td><form:label path="email" for="email">Email address:</form:label></td>
	<td><form:input path="email" type="email" class="form-control" id="email" autofocus="true"/></td>
	<td class="alert alert-danger"><form:errors path="email"/></td>
	</tr>
	
	<tr>
	<td><form:label path="username" for="username">UserName:</form:label></td>
	<td><form:input path="username" type="text" class="form-control" id="username"/></td>
	<td class="alert alert-danger"><form:errors path="username"/></td>
	</tr>
							  	
	<tr>
	<td><form:label path="password" for="password">Password:</form:label></td>
	<td><form:input path="password" type="password" class="form-control" id="password"/></td>
	<td class="alert alert-danger"><form:errors path="password"/></td>
	</tr>
							  	
	<tr>
	<td><form:label path="cPassword" for="cPassword">Confirm Password:</form:label></td>
	<td><form:input path="cPassword" type="password" class="form-control" id="cpassword"/></td>
	<td class="alert alert-danger"><form:errors path="cPassword"/></td>
	</tr>
							  	
	<tr>
	<td><form:label path="phone" for="phone">Phone:</form:label></td>
	<td><form:input path="phone" type="phone" class="form-control" id="phone"/></td>
	<td class="alert alert-danger"><form:errors path="phone" /></td>
	</tr>
							  	
	<tr>
	<td><form:label path="address" for="address">Address:</form:label></td>
	<td><form:textarea path="address" class="form-control" id="address"></form:textarea></td>
	<td class="alert alert-danger"><form:errors path="address" /></td>
	</tr>
							  	
	<tr>
	<td colspan="2" >
	<div class="row">
	<div class="col-md-2 col-md-offset-5"> <button type="submit" class="btn btn-default">Submit</button> </div>
	</div>
	</td>
	</tr>
							  	
	</table>
	</form:form>
</div>
</div>
</div>
</div>
					
<br><br><br>
</body>



