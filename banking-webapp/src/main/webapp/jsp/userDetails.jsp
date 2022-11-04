<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
.hide{
visibility:hidden
}																		
}.label{
font-weight:bold;
}table{

}
</style>
</head>
<body>
<div class=content>
<h3 style=color:red; font-weight:bold>${error}</h3>
<div class=${hide }>
<h3 >USER ID: ${id}</h3>
<form action="<%=request.getContextPath() %>/MainServlet" method="post">
<table>
<tr>																	
<td class=label >NAME</td>
<td>${name}</td>
</tr>
<tr>
<td class=label>EMAIL</td>
<td><input type="email" value="${email}" name=email /></td>
</tr>
<tr>
<td class=label>MOBILE</td>
<Td><input type="tel" value=${mobile} name=mobile /></Td>
</tr>
<tr>
<td class=label CLASS="${customer}">AADHAR</td>
<td CLASS="${customer}">${aadhar}</td>
</tr>
<tr>
<td class=label CLASS="${customer}">PAN NUMBER</td>
<td CLASS="${customer}">${pan}</td>
</tr>
</table>
<BUTTON CLASS="${customer}" value="SAVE CUSTOMER DETAILS" name=button>SAVE</BUTTON>
<div><BUTTON CLASS="${admin}" value="SAVE ADMIN DETAILS" name=button>SAVE</BUTTON></div>
</form>
</div>
</div>
</body>
</html>