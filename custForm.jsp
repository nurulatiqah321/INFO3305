<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<%@ include file="setHeader.jsp" %>
<%@ page errorPage="error.jsp" %>
<% session.invalidate(); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<font face = "arial" size = "2" color = "#000000">
<form method = "post" action = "custInfo.jsp">

<table align ="center">

<tr>
<td>Name</td>
<td>:</td>
<td><input type ="text" name="namecust" size="30" ></td>
</tr>

<tr>
<td>Phone No</td>
<td>:</td>
<td><input type ="text" name="cphone" size="30"></td>
</tr>

<tr>
<td>Email</td>
<td>:</td>
<td><input type ="text" name="email" size="30"></td>
</tr>

<tr>
<td>Room Type</td>
<td>:</td>
<td><input type="radio" name="rType" value="single">Single
<input type="radio" name="rType" value="double">Double
<input type="radio" name="rType" value="Deluxe">Deluxe
</td>
</tr>

<tr>
<td>Duration</td>
<td>:</td>
<td><input type="radio" name="duration" value="3 Days">3 Days
<input type="radio" name="duration" value="5 Days">5 Days
<input type="radio" name="duration" value="7 Days">7 Days
</td>
</tr>

</table>
<div align="center" style="margin-top:5px">
<button type="submit" value="submit">Submit</button>
<button type="clear" value="reset" >Reset</button>
</div>

</form>
</font>
</body>
</html>
