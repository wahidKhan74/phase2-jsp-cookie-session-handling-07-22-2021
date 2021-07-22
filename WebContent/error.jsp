<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error JSP Page</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<h2 style="color:red;text-align:center"> Error Message : <%= exception.getMessage() %></h2>
	<h2 style="color:red;text-align:center"> Error Code : <%= response.getStatus() %></h2>
	
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>