<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<td>Customer ID</td>
<td>:</td>
<td><input type ="text" name="idcust" size="30"></td>
</tr>


<tr>
<td>Phone No</td>
<td>:</td>
<td><input type ="text" name="cphone" size="30"></td>
</tr>

</table>
<div align ="center" style = "margin-top:5px">
<button type ="submit" value = "submit" style = "margin :10px 250px">Submit</button>
<button type ="clear" value = "reset">Reset</button>
</div>

</form>
</font>
</body>
</html>