<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4 style=color:green ;font-weight:bold>${success}</h4>
<form action="<%=request.getContextPath() %>/MainServlet" method="post">
<label> SELECT ACCOUNT TO DEACTIVATE </label>  
<select name=select> 
<option value=none selected disabled hidden >SELECT AN ACCOUNT</option> 
<c:forEach var="entrys" items="${list}">
<option value ="${entrys}"> ${entrys}</option>
</c:forEach>      
</select>
<input TYPE="submit" VALUE="REQUEST DEACTIVATION" NAME=button />
</form>
<form action="<%=request.getContextPath() %>/MainServlet" method="post">
<label> SELECT ACCOUNT TO ACTIVATION </label>  
<select name=select> 
<option value=none selected disabled hidden >SELECT AN ACCOUNT</option> 
<c:forEach var="entrys" items="${list1}">
<option value ="${entrys}"> ${entrys}</option>
</c:forEach>      
</select>
<input TYPE="submit" VALUE="REQUEST ACTIVATION" NAME=button />
</form>
<h4 style=color:red ;font-weight:bold>${error}</h4>
</body>
</html>