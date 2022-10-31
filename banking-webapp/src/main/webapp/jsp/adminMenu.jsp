<!DOCTYPE html>
<html LANG="en">
<head>
<meta charset="UTF-8">
<title>ADMIN MENU</title>
</head>
<body>
<h1>MENU</h1>
<form action=../MainServlet method=post TARGET=admin>
<div><button value= userDetails.jsp name =button>HOME</button></div>
<div><button value= requests.jsp name =button>REQUESTS</button></div>
<div><button value="createCustomer.jsp" name=button>CREATE CUSTOMER</button></div>
<div><button value="createAccount.jsp" name=button >CREATE ACCOUNT</button></div>
<div><button value="searchCustomer.jsp" name=button >SEARCH CUSTOMER</button></div>
<div><button value="searchAccount.jsp" name=button >SEARCH ACCOUNT</button></div>
<div><button value="viewTransactions.jsp" name=button >VIEW TRANSACTIONS</button></div>
<div><button value="modifyDetails.jsp" name=button >MODIFY CUSTOMER DOCUMENTS</button></div>
<div><button value="changePassword.jsp" name=button > CHANGE PASSWORD</button></div>
</form>
</body>
</html>