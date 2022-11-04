<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<link rel=stylesheet type=text/css href="<%=request.getContextPath()%>/css/tables.css">
<body>
<table>
<tr>
<th>ID</th>
<th>NAME</th>
<th>EMAIL</th>
<th>MOBILE</th>
<th>STATUS</th>
<th>AADHAR</th>
<th>PAN</th>
</tr>
<c:forEach var="customer" items="${map}">
<tr>
<th>${customer.value.getUserId()}</th>
<th>${customer.value.getName()}</th>
<th>${customer.value.getEmail()}</th>
<th>${customer.value.getMobileNo()}</th>
<th>${customer.value.getStatus()}</th>
<th>${customer.value.getAadharId()}</th>
<th>${customer.value.getPanNumber()}</th>
</tr>
</c:forEach>
</table>
</body>
</html>