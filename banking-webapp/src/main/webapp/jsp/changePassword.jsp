<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4 style=color:green ;font-weight:bold>${success}</h4>
<h3>CHANGE PASSWORD</h3>
<form action="<%=request.getContextPath() %>/MainServlet" method="post">
<label>OLD PASSWORD</label><input required name=old TYPE="password">
<div><label>NEW PASSWORD</label><input required name=newPass TYPE="password"></div>
<div><label>RE-ENTER </label><input required name=enter TYPE="password"></div>
<DIV><input name=button value=changePassword TYPE="submit"></DIV>
</form>
<h5 style=color:red; font-weight:bold; >${error1}</h5>
<div><h5 style=color:red; font-weight:bold; >${error2}</h5></div>
</body>
</html>