<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:import url="head-meta.jsp"/>

</head>
<body>
	<c:import url="head.jsp"/>
<br><br><br>
<div align="center">

        <form action="login" method="POST">
            <table>
                <tr>
                    <td colspan="2" align="center"><h2>LOGIN PAGE</h2></td>
                </tr>
                <tr>
                <td>User Name:</td><td><input type="text" name ="Username" path="username" ></td>    
                </tr>
                <br>
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="Password" path="password" ></td>
                </tr>
                
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Save" /></td>
                </tr>
            </table>
        </form>
        </div>
       <br><br>

</body>
