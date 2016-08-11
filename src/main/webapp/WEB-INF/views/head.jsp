<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" style="color:orange">Electro World</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/aboutus">About Us</a></li>
        <li><a href="${pageContext.request.contextPath}/contacts">Contacts</a></li>
        <li><a href="${pageContext.request.contextPath}/products">Products</a></li>
        <li><a href="${pageContext.request.contextPath}/initiateflow">Flows</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <c:choose>
	      					<c:when test="${not empty pageContext.request.userPrincipal}">
	      						<li><a href="${pageContext.request.contextPath}/index">${pageContext.request.userPrincipal.name}</a></li>
	      						<li><a href="${pageContext.request.contextPath}/logout">Log Out</a></li>
	      						
	      					</c:when>
	      					
	      					<c:otherwise>
	      						<li><a href="${pageContext.request.contextPath}/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        						<li><a href="${pageContext.request.contextPath}/loginpage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      					</c:otherwise>
	      				</c:choose>      
	      				</ul>
    </div>
  </div>
</nav>

	<footer>
		@Rashmi
		</footer>
