<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%
	response.addHeader("pragma", "no-cache");
	response.addHeader("cache-control","no-store");
	response.addHeader("expire","2");
%>
</head>
<body>
<div class="container">
<h2>Successfully Logged-out</h2>
<%
	session.invalidate();
	response.sendRedirect("index.jsp");
%>
</div>
</body>
</html>