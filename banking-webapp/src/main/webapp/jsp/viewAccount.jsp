<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.hide{
visibility:hidden
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3 style=color:red ;font-weight:bold>${error}</h3>
<DIV CLASS="${hide }">
<table>
<tr>
<th>ID</th>
<th>ACCOUNT NUMBER</th>
<th>TYPE</th>
<th>BRANCH</th>
<th>STATUS</th>
<th>BALANCE</th>
</tr>
<tr>
<td>${value.getUserId()}</td>
<td>${value.getAccountNumber()}</td>
<td>${value.getAccountType()}</td>
<td>${value.getAccountBranch()}</td>
<td>${value.getAccountStatus()}</td>
<td>${value.getAccountBalance()}</td>
</tr>
</table>
</DIV>
</body>
</html>