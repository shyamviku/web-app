<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.error{
  color:red;
  font-weight:bold;
  width:8%;
 
}
</style>
</head>
<body>
<h5  class=error >${error}</h5>
<form action="<%=request.getContextPath() %>/MainServlet" method=post TARGET=showframe>
<label>ENTER CUSTOMER ID</label>
<input type="number" value="${userId}" name=customerId required>
<button name=button value=getUserDetails>CUSTOMER DETAILS</button>
<button name=button value=getUserAccounts>CUSTOMER ACCOUNTS</button>
<button name=button value=viewTransactionsAdmin>CUSTOMER TRANSACTIONS</button>
<button name=button value=modifyDetails>MODIFY DOCUMENTS</button>
</form>
<iframe  style=margin-top:5% width=100% height=600px name=showframe></iframe>
</body>
</html>