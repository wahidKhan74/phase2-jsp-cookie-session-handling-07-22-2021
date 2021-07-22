<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout Profile</title>
</head>
<body>
    <% 
    Cookie ck1 = new Cookie("userId","");
	Cookie ck2 = new Cookie("userEmail","");
	Cookie ck3 = new Cookie("JSESSIONID","");
	ck1.setMaxAge(0);
	ck2.setMaxAge(0);
	ck3.setMaxAge(0);
	response.addCookie(ck1);
	response.addCookie(ck2);
	response.addCookie(ck3);
	out.print("<h2 style='color:green;text-align:center'> Successfully Logged out !</h2>");
    %>
	<h1></h1>
</body>
</html>