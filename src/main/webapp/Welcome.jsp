<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2> 
<% String a=session.getAttribute("username").toString(); 
out.print("Thomas Hospital");%><br>
<%out.println("Welcome"+a); %> 
</h2> <br/> <br/> <br/><br/><br/><br/><br/> 
<a href="Logout.jsp">Logout</a>


</body>
</html>