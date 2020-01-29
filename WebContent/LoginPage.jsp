<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%
response.setHeader("Cache-Control", "no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", -1);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<script>
function clearForms() {
var i;
for (i = 0; (i < document.forms.length); i++)
document.forms[i].reset();
}
function validateForm() {
var x = document.forms["myForm"]["un"].value;
if (x == null || x == "") {
alert("Username must be filled out");
document.getElementById('un').focus();
return false;
}
var y = document.forms["myForm"]["pw"].value;
if (y == null || y == "") {
alert("password must be filled out");
document.getElementById('pw').focus();
return false;
}
}
</script>
<title>Login Page</title>
<style type="text/css">
body {
	font: normal 18px Arial;
	margin: 0;
	padding: 0;
	position: relative;
	background: rgb(189, 18, 111);
	background-image: url(Images/login.jpg);
}
h1{
	color: black;
	margin: 0px 0px 10px 0px;
	padding-bottom: 10px;
	font: normal 27px Georgia, serif;
	text-align: center;
}

#view{
text-align:center;

}
</style>


</head>
<body onLoad="clearForms()" onunload="clearForms()">
<br><br><br><br><br><br><br><br>
    <h1><b>Login</b></h1>
 

<div id="view">
<br>
	<form action="LoginServlet" onsubmit="return validateForm()"
		method="post" name="myForm">
		Username:<input type="text" name="un" id="un" /><br><br>
		Password: <input type="password" name="pw" id="pw" /> <br><br>
		<input type="submit" value="submit">
	</form>
</div>
</body>
</html>