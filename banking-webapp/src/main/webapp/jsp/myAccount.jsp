<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
table{
background-color:#28282B ;
margin-left:auto;
margin-right:auto;
margin-top:200px;
font-size:150%;
border:10px solid white;
}
td{
color:#49ead2;
border-right:solid white;
border-bottom:solid white;
border-top:solid white;
}
th{
background:#49ead2
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<th>ACCOUNT NUMBER</th>
<th>TYPE</th>
<th>BRANCH</th>
<th>STATUS</th>
<th>BALANCE</th>
</tr>
<c:forEach var="entry" items= "${map1}" >
<tr>
<td>${entry.key}</td>
<td>${entry.value.getAccountType()}</td>
<td>${entry.value.getAccountBranch()}</td>
<td>${entry.value.getAccountStatus()}</td>
<td>${entry.value.getAccountBalance()}</td>
</tr>
</c:forEach>


</table>
</body>
</html>