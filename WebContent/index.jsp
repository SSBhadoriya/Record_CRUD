<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%String sessionObj=(String)session.getAttribute("SESSION");
	if(sessionObj!=null)
		response.sendRedirect("index.jsp");
%>

</head>
<body>
<div class="container mt-5">
 <div class="row">
 	<div class="col-lg-4"></div><div class="col-lg-4">
 	<%String msg=(String)request.getAttribute("LoginFail");
 	if(msg!=null)
 	out.println("<h3>"+msg+"</h3>");%>
 	<h1>Login Form</h1><hr/>
<form action="./IndexServlet" method="post">

 <label for="userid"><b>User Id:</b></label>
    <input type="text" class="form-control" placeholder="Enter Id" name="uid" id="userid" required><br/>

    <label for="pwd"><b>Password</b></label>
    <input type="password" class="form-control" placeholder="Enter Password" name="pass" id="pwd" required><br/>
	
    <label for="usr">Login as:</label>
    <select class="form-control" id="usr" name="user" required>
      <option value="" disabled="disabled" selected="selected">-Select user type-</option>
      <option>Administration</option>
     <!--  <option>Organization</option>
      <option>Job Seeker</option>
      <option>Student</option> -->
      
    </select><br><br>
<button type="submit" class="btn btn-success"/>Login</button>
<button type="reset" class="btn btn-danger"/>Reset</button>

</form>
</div>
</div>
</div>
</div>
</body>
</html>