<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="custInfo" class="model.customer" scope="page" />
<jsp:setProperty name ="custInfo"  property ="*" />

<font face = "arial" size = "2">
<table align = "center">

<tr>
<td>Name</td>
<td>:</td>
<td><jsp:getProperty name = "custInfo" property = "namecust"/>
</td>
</tr>

<tr>
<td>Email</td>
<td>:</td>
<td><jsp:getProperty name = "custInfo" property = "email"/>
</td>
</tr>


<tr>
<td>Phone No</td>
<td>:</td>
<td><jsp:getProperty name = "custInfo" property = "cphone"/>
</td>
</tr>

<tr>
<td>Room Type</td>
<td>:</td>
<td><jsp:getProperty name = "custInfo" property = "rType"/>
</td>
</tr>

<tr>
<td>Duration</td>
<td>:</td>
<td><jsp:getProperty name = "custInfo" property = "duration"/>
</td>
</tr>


</table>
</font>
</body>
</html>
