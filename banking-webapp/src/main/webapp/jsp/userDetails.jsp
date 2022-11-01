<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
.KEY{
font-weight:bold;
}
</style>
</head>
<body>
<p STYLE=FONT-SIZE:300% FONT-WEIGHT:BOLD>CUSTOMER ID: ${id}</p>
<form action="<%=request.getContextPath() %>/MainServlet" method="post">
<table>
<tr>
<td CLASS=KEY>NAME</td>
<td>${name}</td>
</tr>
<tr>
<td CLASS=KEY>EMAIL</td>
<td><input type="email" value=${email} name=email /></td>
</tr>
<tr>
<td CLASS=KEY>MOBILE</td>
<TD><input type="tel" value=${mobile} name=mobile /></TD>
</tr>
<tr>
<td CLASS=KEY>AADHAR</td>
<td>${aadhar}</td>
</tr>
<tr>
<td CLASS=KEY>PAN NUMBER</td>
<td>${pan}</td>
</tr>
</table>
<input type="submit" value="SAVE" name=button>
</form>
<h5 style=color:red; font-weight:bold; >${error}</h5>
</body>
</html>