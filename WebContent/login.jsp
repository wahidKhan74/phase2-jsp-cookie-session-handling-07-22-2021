<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login JSP Page</title>
</head>
<body>
	
	<jsp:include page="header.jsp"></jsp:include> <br><br>
	<form action="login-submit.jsp" method="post">
		<fieldset>
			<legend>Login Form</legend>
			User email : <input type="text" name="email" id="email"/> <br><br>
			User password : <input type="password" name="password" id="password"/> <br><br>
			<input type="submit" value="Login" />
		</fieldset>
	</form>
	
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>