<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>CUSTOMER PORTAL</title>
<style>
body{
background-color:#28282B
}
img.zoho {
	width: 100px;
}
</style>
</head>
<body>
	<img class="zoho" alt="bank logo" src="images/OIP.jpg">
	<a href="jsp/login.jsp"><button style="margin-left: 95%">
			LOGOUT</button></a>
	<h2 style=color:#e5c319 ALIGN="center">ZOHO INTERNATIONAL BANK</h2>
	<iframe style=background-color:#49ead2 src="jsp/customerMenu.jsp" width="15%" height="600px">
	</iframe>
	<iframe style=background-color:#e5c319 src="<%=request.getContextPath() %>/jsp/userDetails.jsp" width="80%" height="600px"
		name=customer> </iframe>
</body>
</body>
</html>