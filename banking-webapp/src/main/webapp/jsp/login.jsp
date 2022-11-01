
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>ZOHO INTERNATIONAL BANK</title>
<link rel=stylesheet type=text/css href="<%=request.getContextPath() %>/css/mainpage.css">
</head>
<body >
<img class = "zoho" alt="" src="<%=request.getContextPath() %>\images\OIP.jpg">
<p style= color:#A38A00;font-size:300% align=center >ZOHO INTERNATIONAL BANK</p>
<form action="<%=request.getContextPath() %>/MainServlet" method="post">
<table>
<tr>
<td><label > USER ID:: </label></td><td><input required name=userid type="number"></input></td>
</tr>
<tr>
<td><label > PASSWORD:: </label></td><td><input required name=password type="password"></input></td>
</tr>
<tr>
<td></td>
<td><button value="login.jsp" name=button>LOGIN</button></td>
</tr>
</table>
</form>
<h5 class=error >${error}</h5>
</body>
</html>