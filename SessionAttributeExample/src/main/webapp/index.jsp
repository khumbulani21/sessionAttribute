<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="<%= request.getContextPath() %>/LoginController">

<input type="text" name="username" placeholder="username"><br/>
<input type="password" name="password" placeholder="password"><br/>
<input type="submit" value="Login">
</form>
</body>
</html>