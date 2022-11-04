<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
<h4 style=color:green ;font-weight:bold>${success}</h4>
<H3>CREATE CUSTOMER</H3>
<form action="<%=request.getContextPath() %>/MainServlet" method="post">
	<table>
	<tr>
		<td>NAME</td>
		<td><input required TYPE="text" name=name oninput="this.value = this.value.toUpperCase()"/></td>
		</tr>
		<tr>
		<td>EMAIL</td>
		<td><input TYPE="email" name=email required></td>
		</tr>
		<tr>
		<td>MOBILE</td>
		<td><input TYPE="tel" name=mobile required></td>
		</tr>
		<tr>
		<td>AADHAR</td>
		<td><input TYPE="number" name=aadhar size=14 maxlength=999999999999  required></td>
		</tr>
		<tr>
		<td>PAN</td>
		<td><input TYPE="text" name=pan required maxlength=10 size=12 oninput="this.value = this.value.toUpperCase()"></td>
		</tr>
		<tr>
		<td>ACCOUNT TYPE</td>
		<td><input TYPE="text" name=accountType required oninput="this.value = this.value.toUpperCase()"></td>
		</tr>
		<tr>
		<td>BRANCH</td>
		<td><input TYPE="text" name=branch required oninput="this.value = this.value.toUpperCase()"></td>
		</tr>
		<tr>
		<td>INITIAL DEPOSIT</td>
		<td><input TYPE="NUMBER" name=deposit min=500 required></td>
		</tr>
	</table>
	<input type="submit" value="CREATE" name=button>
	</form>
	<h4 style=color:red ;font-weight:bold>${error}</h4>
</body>
</html>