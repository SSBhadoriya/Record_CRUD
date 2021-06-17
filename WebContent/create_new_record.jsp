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
<div class="row">
<div class="col-lg-4 col-md-4 col-sm-3 col-xs-2"></div>
<div class="col-lg-4 col-md-4 col-sm-6 col-xs-8">
<%
	String msg=(String)request.getAttribute("INSERTED");
	if(msg!=null)
		out.print("<h4>Data Inserted successfully!!!</h4>");
%>
<form action="./CreateServlet" method="post">

 <label for="userid"><b>User name:</b></label>
    <input type="text" class="form-control" placeholder="Enter your name" name="uname" id="username" required><br/>

<button type="submit" class="btn btn-success"/>Login</button>
<button type="reset" class="btn btn-danger"/>Reset</button>
</form>
</div>
</div>
</div>
</body>
</html>