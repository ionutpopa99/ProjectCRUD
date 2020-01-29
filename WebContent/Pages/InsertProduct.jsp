<%@page import="daw.model.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
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

	<div align="center"><a href="ProductListServlet"><b>Vizualizare</b></a></div>
	</div>
<hr><br><br>
<h1><b>Adaugare produse</b></h1>
	<form action="InsertProduct" method="post">
	<br><br>
	<div id="view">
					
		Denumire:<input type="text" name="denumire" required><br><br>
		Pret:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="pret" required><br><br>
		Cantitate:&nbsp;<input type="text" name="cantitate" required><br> <br>
		
		<input type="submit" value="Adauga">
		</div>
	</form>
	
</body>
</html>