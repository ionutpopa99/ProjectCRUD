<%@page import="daw.model.bean.UserBean"%>
<%@page import="daw.model.bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
<style type="text/css">
body{
    font: normal 18px Arial;
    margin: 0;
    padding: 0;
    position: relative;
    background: rgb(189, 18, 111);
    background-image: url(Images/view.jpg);
}
table{
align:center;
    align-content: center;
    text-align: center;
    border-collapse: collapse;
    border: 2px solid black;
}
#navigation-bar{
    
    font: normal 18px Arial;
    padding: 15px 20px;
    text-align: right;
    color: #FFF

}
h1{ 
    color: black;
    margin: 0px 0px 10px 0px;
    padding-bottom: 10px;
    font: normal 27px Georgia, serif; 
    text-align: center;

}

td,tr{
    border-collapse: collapse;
    border:2px solid black;

}
#menu{
    margin-right: 105px;
}
#view{
text-align:center;

}
</style>
</head>
<body>


<div id="navigation-bar">
<%
		UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));
	%>
<div>Welcome <b><%=currentUser.getFirstName() + " " + currentUser.getLastName()%></b> <a href="LogoutServlet"> Logout</a></div>

	<div align="center"><a href="StartInsertServlet"><b>Adaugare</b> | </a><a href="ProductListServlet"><b>Vizualizare</b></a></div>
	
	</div>
</head>
<body>
<hr><br><br>
	<%
		ProductBean pb = (ProductBean) (request.getAttribute("pbEdit"));
	%>
<div id="view">
<h1><b>Editare produs</b></h1>
<br>
	<form action="UpdateProductServlet" method="post">
	
		<input type="hidden" name="id" hidden="id"
			value="<%=pb.getId_Product()%>"><br> 
			
		Denumire:<input
			type="text" name="denumire" value="<%=pb.getDenumire()%>"><br><br>
		Pret:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="pret"
			value="<%=pb.getPret()%>"><br><br>
		Cantitate:&nbsp;<input type="text" name="cantitate"
		    value="<%=pb.getCantitate()%>"><br> <br>
		
		<input type="submit" value="Save">
		
		
	</form>
</div>
</body>
</html>