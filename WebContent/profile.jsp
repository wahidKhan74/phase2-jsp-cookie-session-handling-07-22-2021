<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Page</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<%
		Cookie ck[] = request.getCookies();
	    int count =0;
	    for(Cookie c: ck){
	    	if(c.getName().equals("userEmail")) {
	    		out.print("<h2 style='color:green;text-align:center'> Hello User " + c.getValue() +"</h2>");
	    		count++;
			} else{
				count =0;
			}
	    }
	    if(count==0) {
				throw new ServletException("Invalid user access, please login first !");
	    }
	%>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>