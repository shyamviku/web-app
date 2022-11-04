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
<label> SELECT ACCOUNT TO DEPOSIT </label>  
<select name=select required> 
<option value="">SELECT AN ACCOUNT</option> 
<c:forEach var="entrys" items="${list}">
<option value ="${entrys}"> ${entrys}</option>
</c:forEach>      
</select>
<div><label>ENTER THE AMOUNT TO DEPOSIT</label><input required TYPE="number" min=1 name=amount></div>
<button type="submit" value="DEPOSIT" name =button>DEPOSIT</button>
</form>
<h4 style=color:red; font-weight:bold; >${error}</h4>
</body>
</html>