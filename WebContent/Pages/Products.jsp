<%@page import="daw.model.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@page import="daw.model.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<meta charset="ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Products</title>
<style type="text/css">
body {
	font: normal 18px Arial;
	margin: 0;
	padding: 0;
	position: relative;
	background: rgb(189, 18, 111);
	background-image: url(Images/view.jpg);
}

table {
	align: center;
	align-content: center;
	text-align: center;
	border-collapse: collapse;
	border: 2px solid black;
}

#navigation-bar {
	font: normal 18px Arial;
	padding: 15px 20px;
	text-align: right;
	color: #FFF
}

h1 {
	color: black;
	margin: 0px 0px 10px 0px;
	padding-bottom: 10px;
	font: normal 27px Georgia, serif;
	text-align: center;
}

td, tr {
	border-collapse: collapse;
	border: 2px solid black;
}
</style>
</head>
<body>


	<div id="navigation-bar">
		<%
		UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));
	%>
		<div>
			Welcome <b><%=currentUser.getFirstName() + " " + currentUser.getLastName()%></b>
			<a href="LogoutServlet"> Logout</a>
		</div>

		<div align="center">
			<a href="StartInsertServlet"><b>Adaugare</b></a>
		</div>
		<br>
		<hr>
	</div>
	<br>
	<h1>
		<b>Vizualizare produse</b>
	</h1>
	<br>
	<br>
	<table align="center">
		<tr>

			<td>Denumire</td>
			<td>Pret</td>
			<td>Cantitate</td>
			<td colspan=2 align="center">Actiuni</td>
		</tr>
		<%
			List<ProductBean> list = (List<ProductBean>) (request.getAttribute("prods"));
			for (int i = 0; i < list.size(); i++) {
				ProductBean pb = list.get(i);
		%>

		<tr>

			<td contenteditable='true'><%=pb.getDenumire()%></td>
			<td contenteditable='true'><%=pb.getPret()%></td>
			<td contenteditable='true'><%=pb.getCantitate()%></td>
			<td><a href="DeleteProductServlet?id=<%=pb.getId_Product()%>">Stergere</a></td>
			<td><a
				href="StartUpdateProductServlet?id=<%=pb.getId_Product()%>">Modificare</a></td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>