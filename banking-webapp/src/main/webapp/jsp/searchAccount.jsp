<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h5  class=error >${error}</h5>
<form action="<%=request.getContextPath() %>/MainServlet" method=post TARGET=showAccount>
<label>ENTER CUSTOMER ID</label>
<input type="number" value="${acNo}" name=acNo required>
<button name=button value=getAccountDetails>ACCOUNT DETAILS</button>
<button name=button value=getAccountTransaction>ACCOUNT TRANSACTION</button>
<select required name=days>
<option value=1296000000>15 DAYS</option>
<option value=2592000000>30 DAYS</option>
<option value=15552000000>6 MONTHS</option>
</select>
</form>
<iframe  style=margin-top:5% width=100% height=600px name=showAccount></iframe>
</body>
</html>