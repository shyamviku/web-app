<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/998f87dcd9.js" crossorigin="anonymous"></script>
</head>
<link rel=stylesheet type=text/css href="<%=request.getContextPath() %>/css/mainpage.css">
<body>
<div class=menu>
<div><h1 align=center>MENU</h1></div>
<form action="<%=request.getContextPath()%>/MainServlet" method="post" target=customer>
<div><button value= myAccount name =button> <i class="fa-solid fa-house-chimney"></i>HOME</button></div>
<div><button value= viewtransaction name =button><i class="fa-solid fa-sheet-plastic"></i>TRANSACTIONS</button></div>
<div><button value= withdrawRequest name =button><i class="fa-solid fa-sack-dollar"></i>WITHDRAW</button></div>
<div><button value= transfer name =button><i class="fa-sharp fa-solid fa-people-arrows"></i>TRANSFER</button></div>
<div><button value= deposit name =button><i class="fa-sharp fa-solid fa-money-bill-trend-up"></i>DEPOSIT</button></div>
<div><button value= accountManipulate name =button><i class="fa-solid fa-headset"></i>ACTIVATION</button></div>
</form>
</div>
</body>
</html>