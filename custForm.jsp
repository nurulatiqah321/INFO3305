<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<%@ include file="setHeader.jsp" %>
<% session.invalidate(); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<H2>HOTEL BLUE MOON</H2>

<p><strong>HOTEL PRICE:</strong>
<p>ROOM TYPE: 
1)Single:RM50 &nbsp;
2)Double:RM120  &nbsp;
3)Deluxe:RM250 
<p>DURATION:  
1 Day:RM150  &nbsp;
||  More than 6 Days:RM110 for 1 Day!  
<br>
<form method = "post" action = "custInfo.jsp">
<font face = "arial" size = "2" color = "#000000">
<table>

<tr>
<td>Name</td>
<td>:</td>
<td><input type ="text" name="namecust" size="30" ></td>
</tr>

<tr>
<td>Customer ID</td>
<td>:</td>
<td><input type ="text" name="idcust" size="30"></td>
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
<td>
<select name="duration">
<option value="1day">1 Day</option>
<option value="2day">2 Days</option>
<option value="3day">3 Days</option>
<option value="4day">4 Days</option>
<option value="5day">5 Days</option>
<option value="moreday">More than 6 Days</option>
</select>
</td>
</tr>

</table>
</font>

<div align ="center" style = "margin-top:5px">
<button type ="submit" value = "submit" style = "margin :10px 250px">Submit</button>
<button type ="clear" value = "reset">Reset</button>
</div>

</form>
</body>
</html>
