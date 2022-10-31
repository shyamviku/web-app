
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>ZOHO INTERNATIONAL BANK</title>
<style>

img.zoho{
width:100px;
}
body{
	background:url(../images/mainbackground.jpg) no-repeat center fixed;
	background-size:cover;	
}
form{
font-family:inherit;
}
label{
color:#A38A00;
font-size:100%;
}
table{
background-color:#28282B ;
margin-left:auto;
margin-right:auto;
margin-top:200px;
font-size:150%;
}
</style>

<link rel=stylesheet type=text/css href=../css/mainpage.css>
</head>
<body >
<img class = "zoho" alt="" src="..\images\OIP.jpg">
<p style= color:#A38A00;font-size:300% align=center >ZOHO INTERNATIONAL BANK</p>
<form action="../MainServlet" method="post">
<table>
<tr>
<td><label > USER ID:: </label></td><td><input type="text"></input></td>
</tr>
<tr>
<td><label > PASSWORD:: </label></td><td><input type="text"></input></td>
</tr>
<tr>
<td><button value="admin.jsp" name=button>ADMIN LOGIN</button></td>
<td><button value="customer.jsp" name=button>CUSTOMER LOGIN</button></td>
</tr>
</table>
</form>
</body>
</html>