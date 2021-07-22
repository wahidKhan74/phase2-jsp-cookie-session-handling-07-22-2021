<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Submitted Request</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email==null || email.equals("")  || password==null || password.equals("")) {
			throw new ServletException("Invalid Request , Required Params are missing!");
		} else {
			if(email.equals("admin@gmail.com") && password.equals("admin@123")){
				// create a cookie
				Cookie ck1 = new Cookie("userId",UUID.randomUUID().toString());
				Cookie ck2 = new Cookie("userEmail",email);
				
				// set age for cookie
				ck1.setMaxAge(60*60*24);
				ck2.setMaxAge(60*60*24);
						
				// add cookies to response
				response.addCookie(ck1);
				response.addCookie(ck2);
				
				out.print("<h2 style='color:green;text-align:center'> Successfully Logged In !</h2>");
			
			} else {
				throw new ServletException("Invalid credentials !");
			}
		}
	
	
	
	
	%>
	
	
	
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>