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
<h1 align=center>ACCOUNT ACTIVATION REQUESTS</h1>
<h3 align=center style=color:red ;font-weight:bold>${error}</h3>
<table class="${hide}">
<tr>
<th>REQUEST NUMBER</th>
<th>USER ID</th>
<th>ACCOUNT NUMBER</th>
<th>REQUEST</th>
<th>REQUEST TIME</th>
<th>SELECT</th>
</tr>
<c:forEach var="entry" items="${requests }">
<form action="<%=request.getContextPath() %>/MainServlet" method="post">
<tr>
<td ><input type=text name="requestnumber" value="${entry.key}"></td>
<td>${entry.value.getUserId() }</td>
<td>${entry.value.getAcNo() }</td>
<td>${entry.value.getType() }</td>
<td>${entry.value.getReqTime() }</td>
<td><button value=acceptActivation name=button>APPROVE</button><button value=denyActivation name=button>DENY</button></td>
</tr>
</form>
</c:forEach>
</table>
</body>
</html>