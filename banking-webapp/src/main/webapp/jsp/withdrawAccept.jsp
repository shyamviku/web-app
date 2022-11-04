<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style >
.hide{
visibility:hidden
}
</style>
<meta charset="ISO-8859-1">
<title>REQUESTS</title>
</head>
<link rel=stylesheet type=text/css
	href="<%=request.getContextPath()%>/css/tables.css">
<body>
<h1 align=center>WITHDRAW REQUESTS</h1>
<h3 align=center style=color:red ;font-weight:bold>${error}</h3>
<table class="${hide}">
<tr>
<th>REQUEST NUMBER</th>
<th>USER ID</th>
<th>ACCOUNT NUMBER</th>
<th>AMOUNT</th>
<th>REQUEST TIME</th>
<th>SELECT</th>
</tr>
<c:forEach var="entry" items="${requests }">
<form action="<%=request.getContextPath() %>/MainServlet" method="post">
<tr>
<td><input name="requestnumber" value="${entry.key }"type="text" readonly></td>
<td>${entry.value.getUserId() }</td>
<td>${entry.value.getAccountNumber() }</td>
<td>${entry.value.getAmount() }</td>
<td>${entry.value.getTime() }</td>
<TD><button value=acceptWithdraw name=button>APPROVE</button><button value=denyWithdraw name=button>DENY</button></TD>
</tr>
</form>
</c:forEach>
</table>

</body>
</html>