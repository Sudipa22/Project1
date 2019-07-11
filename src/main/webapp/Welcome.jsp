<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
html, body {   
 width: 100%;   
height: 100%;   
font-family: "Helvetica Neue", Helvetica, sans-serif;   
color: Blue;   
-webkit-font-smoothing: antialiased;    background: #f0f0f0;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2> 
<% String a=session.getAttribute("username").toString(); %><br>
<%out.println("Welcome" +a); %> 
</h2> <br/> <br/> <br/><br/><br/><br/><br/> 

<a href="Logout.jsp">Logout</a>


</body>
</html>