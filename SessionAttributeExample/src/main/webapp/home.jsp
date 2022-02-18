<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username=null;
String sessionID=null;

Cookie[] cookies = request.getCookies();
if(request.getSession().getAttribute("username")==null)
{
 
	response.sendRedirect("index.jsp");
	
}else{
	username=request.getSession().getAttribute("username").toString();
	
	//set session id
	sessionID=request.getSession().getId();
}



%>
Username:<br/>
<%=username %>
<%=sessionID %>
<form  method="post" action="<%= request.getContextPath() %>/LogoutController">

<input type="hidden" name="action" value="destroy">
<input type="submit" value="Logout">
</form>

</body>
</html>