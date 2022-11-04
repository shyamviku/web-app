<!DOCTYPE html>
<html LANG="en">
<head>
<meta charset="UTF-8">
<title>ADMIN MENU</title>
</head>
<body>
<h1>MENU</h1>
<form action=../MainServlet method=post TARGET=admin>
<div><button value= adminDetails name =button>HOME</button></div>
<div><button value= getWithdrawRequest name =button>WITHDRAW REQUESTS</button></div>
<div><button value= activateRequest name =button>ACCOUNT ACTIVATION REQUESTS</button></div>
<div><button value="createCustomer" name=button>CREATE CUSTOMER</button></div>
<div><button value="createAccountPage" name=button >CREATE ACCOUNT</button></div>
<div><button value="searchCustomer" name=button >SEARCH CUSTOMER</button></div>
<button name=button value=showAllCustomers>SHOW ALL CUSTOMERS</button>
<div><button value="showAllAccounts" name=button >SHOW ALL ACCOUNTS</button></div>
<div><button value="searchAccount" name=button >SEARCH ACCOUNT</button></div>
<div><button value="modifyDetails" name=button >MODIFY CUSTOMER DOCUMENTS</button></div>
<div><button value="changePass" name=button > CHANGE PASSWORD</button></div>
</form>
</body>
</html>