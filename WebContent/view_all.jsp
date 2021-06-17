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
<%String sessionObj=(String)session.getAttribute("SESSION");
	if(sessionObj==null)
		response.sendRedirect("index.jsp");
%>
</head>
<body>
<div class="container">
<h3>View All Record from here</h3>
</div>
</body>
</html>