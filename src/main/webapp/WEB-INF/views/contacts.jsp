<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		
		<c:import url="head-meta.jsp"/>
<style>

body 
{
	 background: url("resources/images/black-background-images-10.jpg") no-repeat center center fixed; 
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
	
}
h1  {
	color:white;
	text-align:center;
	font-family: "Monotype Corsiva";
	font-size:80px;

}



</style>	

</head>
<body>
    <c:import url="head.jsp"/>
        
        
     
 <div class="col-md-offset-1">       
<h1>Contact Us...</h1>
 </div>
 
  <br><br>
<form id="contact-form" method="post" action="contact.php" role="form">

    <div class="messages" ></div>

    

        <div class="row">
            <div class="col-md-offset-6">
            <div class="form-group" >
                   <h4 style="color:white">User Name *</h4> 
                    <input type="text" name="name" placeholder="Please enter your name.. *" required="required" data-error="Username is required." style="background-color:lightgrey;color:black">
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-offset-6">
                <div class="form-group">
                    <h4 style="color:white">Email *</h4>
                    <input type="text" name="email"  placeholder="Please enter your email.. *" required="required" data-error="Valid email is required." style="background-color:lightgrey;color:black">
                    <div class="help-block with-errors"></div>
                </div>
            </div>
            </div>
            <div class="row">
            <div class="col-md-offset-6">
                <div class="form-group">
                    <h4 style="color:white">Message *</h4>
                   	<textarea id="form_message" name="message" placeholder="Message for me.. *" rows="6" required="required" data-error="Please,leave us a message." style="background-color:lightgrey;color:black"></textarea>
                    <div class="help-block with-errors"></div>
                </div>
            </div>
            
            <div class="col-md-offset-6">
                <input type="submit" class="btn btn-success btn-md btn-send" value="Send" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-offset-6">
                <p class="text-muted"><strong>*</strong> These fields are required.</p>
            </div>
        </div>
    

</form>
</body>

