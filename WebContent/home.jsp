<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<div class="container">

<h2>Welcome,
<%String sessionObj=(String)session.getAttribute("SESSION");
if(sessionObj==null)
	response.sendRedirect("index.jsp");
else
 out.println("<h1>"+sessionObj+"</h1>");%></h2>
	
</div>
</body>
</html>