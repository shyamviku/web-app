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
<label> SELECT ACCOUNT TO TRANSFER FROM </label>  
<select name=select required> 
<option value="">SELECT AN ACCOUNT</option> 
<c:forEach var="entryss" items="${list}">
<option value ="${entryss}"> ${entryss}</option>
</c:forEach>      
</select>
<div><label>ENTER THE AMOUNT TO TRANSFER</label><input required TYPE="number" name=amount></div>
<div><label>ENTER THE RECEIVER'S ACCOUNT NUMBER</label><input TYPE="number" NAME=toaccount></div>
<input name= button type="submit" value="TRANSFER"/>
</form>
<h4 style=color:red; font-weight:bold; >${error}</h4>
</body>
</html>