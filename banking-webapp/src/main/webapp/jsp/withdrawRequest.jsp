<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/MainServlet" method="post">
<label> SELECT ACCOUNT TO DEPOSIT </label>  
<select name=select> 
<option value=none selected disabled hidded>SELECT AN ACCOUNT</option> 
<c:forEach var="entryss" items="${list}">
<option value ="${entryss}"> ${entryss}</option>
</c:forEach>      
</select>
<div><label>ENTER THE AMOUNT TO WITHDRAW</label><input TYPE="number" name=amount></div>
<button type="submit" value="REQUEST WITHDRAW" name =button>REQUEST WITHDRAW</button>
</form>
</body>
</html>