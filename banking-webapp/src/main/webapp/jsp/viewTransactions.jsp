<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
.hide{
display:none
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel=stylesheet type=text/css
	href="<%=request.getContextPath()%>/css/operationcontent.css">
<body>
<h3 style=color:red ;font-weight:bold>${error}</h3>
<div class="${hide1}">
	<form action="<%=request.getContextPath()%>/MainServlet" method="post">
	
<label class="${hide}"> SELECT ACCOUNT TO VIEW TRANSACTION </label> <select
			class="${hide}" name=select required>
			<option value="" >SELECT AN
				ACCOUNT</option>
			<c:forEach var="entrys" items="${list}">
				<option value="${entrys}">${entrys}</option>
			</c:forEach>
		</select>
		<button class="${hide}" value="showtransaction" name=button>SHOW</button>	
		<input class=hide type=number value="${userId}" name ="userId">
	</form>
	<h3 class="${render}">ACCOUNT NO:${acNo}</h3>
	<table  class="${render}">
		<tr>
			<th>TRANSACTION ID</th>
			<th>TRANSACTION TYPE</th>
			<th>FROM</th>
			<th>AMOUNT</th>
			<th>STATUS</th>
			<th>TIME</th>
			<th>CLOSING BALANCE</th>
		</tr>
		<c:forEach var="entry" items="${map}">
			<tr>
				<td>${entry.key}</td>
				<td>${entry.value.getTypeOfTransaction()}</td>
				<td>${entry.value.getFromAccount()}</td>
				<td>${entry.value.getAmount()}</td>
				<td>${entry.value.getTransactionStatus()}</td>
				<td>${entry.value.getTimeOfTranstraction()}</td>
				<TD>${entry.value.getClosingBalance()}</TD>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>