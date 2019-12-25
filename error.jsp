<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>An error has occured.</h1>
<% if(response.getStatus() == 500){ %>
<font color="red">Error: <%=exception.getMessage() %> </font><br>

<%-- include index page --%>
<%@ include file="Login.jsp"%>
<%}else {%>
Hi There, error code is <%=response.getStatus() %><br>
Please go to <a href="Login.jsp">Login Page</a>
<%} %>
</body>
</html>
