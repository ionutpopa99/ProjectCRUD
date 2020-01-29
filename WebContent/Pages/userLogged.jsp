<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256" import="daw.model.bean.UserBean"%>
<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	if (session.getAttribute("currentSessionUser") != null) {
%>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>User Logged Successfully</title>
</head>
<body onload="noBack();">
	<a href="../LogoutServlet">Logout</a>
	<%
		UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));
	%>
	Welcome
	<%=currentUser.getFirstName() + " " + currentUser.getLastName()%>
	<%
	response.sendRedirect("../ProductListServlet");
	%>
</body>
</html>
<%
	} else {
		response.sendRedirect("LoginPage.jsp");
	}
%>