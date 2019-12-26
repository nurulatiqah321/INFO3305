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

<%!
String priceRoom,priceDuration;
double rType,duration,total;
double priceR = 0.0,priceD;
%>

<% 
priceRoom = request.getParameter("rType"); 
priceDuration = request.getParameter("duration");
//rType = Double.parseDouble(priceRoom);
//duration = Double.parseDouble(priceDuration);


if(request.getParameter("rType")!=null){
	if(request.getParameter("rType").equals("single")){
		priceR = 50.0;
	}
	else if(request.getParameter("rType").equals("double")){
		priceR = 120.0;
	}
	else if(request.getParameter("rType").equals("deluxe")){
		priceR = 250;
	}
}else {
	out.println("<br><br>Please select your room or duration!");}


if(request.getParameter("duration")!=null){
	if(duration>=1){
		priceD = 150.0*duration;
	}
	else
		priceD = 110*duration;
}
else {
	out.println("<br><br>Please select your duration!");}

total = priceR+priceD;
out.println("Total Price is: " + total);
%>
    
</table>
</font>
</body>
</html>
