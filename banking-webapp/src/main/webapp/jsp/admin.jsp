<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<title>ADMIN PORTAL</title>
<style>
body{
background-color:white;	
}
img.zoho{
width:100px;
}
</style>
</head>
<body>
<img class = "zoho" alt="zoho logo" src="images/OIP.jpg">
<form action="<%=request.getContextPath() %>/MainServlet" method="post">
	<button value=logout name=button style="margin-left: 95%">LOGOUT</button>
	</form>
<p style= color:#A38A00;font-size:175% align=center >ZOHO INTERNATIONAL BANK</p>
<iframe style=background-color:darkslateblue src="jsp/adminMenu.jsp" width="15%" height="800px" >
</iframe>
<iframe SRC=jsp/userDetails.jsp width="83%" height="800px" name=admin></iframe>
</body>
</html>