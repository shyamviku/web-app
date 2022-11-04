<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4 style=color:green ;font-weight:bold>${success}</h4>
<H3>CREATE ACCOUNT</H3>
<form action="<%=request.getContextPath() %>/MainServlet" method="post">
<TABLE>
<tr>
<td>ENTER CUSTOMER ID</td>
<td><input type=number required name=userId ></td>
<tr>
		<td>ACCOUNT TYPE</td>
		<td><input TYPE="text" name=accountType required oninput="this.value = this.value.toUpperCase()"></td>
		</tr>
		<tr>
		<td>BRANCH</td>
		<td><input TYPE="text" name=branch required oninput="this.value = this.value.toUpperCase()"></td>
		</tr>
		<tr>
		<td>PASSWORD</td>
		<td><input TYPE="text" name=PASSWORD required oninput="this.value = this.value.toUpperCase()"></td>
		</tr>
		<tr>
		<td>INITIAL DEPOSIT</td>
		<td><input TYPE="NUMBER" name=deposit min=500 required></td>
		</tr>
	</table>
	<input type="submit" value="createAccount" name=button>
	</form>
	<h4 style=color:red ;font-weight:bold>${error}</h4>
</body>
</html>