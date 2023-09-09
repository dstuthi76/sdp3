<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Balanced Diet</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="jini.css">
</head>
<body>
    <header>
    <div class="wrapper">
        <div class="logo">
            <img src=".jpg" alt="">
        </div>
<ul class="nav-area">
<a href="/home">Home</a>&nbsp;&nbsp;&nbsp;
  <a href="/signup">Sign up</a>&nbsp;&nbsp;&nbsp;
   <a href="/login">login</a>&nbsp;&nbsp;&nbsp;
   
   
</ul>
</div>
<style>
* {
	margin: 0;
	padding: 0;
}
body {
	font-family: 'Poppins', sans-serif;
}
.wrapper {
	width: 1170px;
	margin: auto;
}
header {
	background: linear-gradient(rgba(1, 1, 0, 0.8), rgba(1, 1, 0, 0)), url(https://img.freepik.com/free-photo/healthy-ingredients-white-wooden-desk_23-2148194994.jpg?size=626&ext=jpg);
	height: 100vh;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: center center;
	position: relative;
}
.nav-area {
	float: right;
	list-style: none;
	margin-top: 30px;
}
.nav-area a {
	display: inline-block;
}
.nav-area a {
	color: #fff;
	text-decoration: none;
	padding: 5px 20px;
	font-family: poppins;
	font-size: 16px;
	text-transform: uppercase;
}
.nav-area a:hover {
	background: #fff;
	color: #333;
}
.logo {
	float: left;
}
.logo img {
	width: 100%;
	padding: 15px 0;
}
.welcome-text {
	position: absolute;
	width: 600px;
	height: 300px;
	margin: 20% 30%;
	text-align: center;
}
.welcome-text h1 {
	text-align: center;
	color: black;
	text-transform: uppercase;
	font-size: 30px;
}
.welcome-text h1 span {
	color: #00fecb;
}
.welcome-text h2 span {
	color: #00fecb;
}
.welcome-text a {
	border: 1px solid #555555;
	padding: 6px px;
	text-decoration: none;
	text-transform: uppercase;
	font-size: 14px;
	margin-top: 20px;
	display: inline-block;
	color: #fff;
}
.welcome-text a:hover {
	background: #fff;
	color: #333;
}
/*resposive*/

@media (max-width:600px) {
	.wrapper {
		width: 100%;
	}
	.logo {
		float: none;
		width: 50%;
		text-align: center;
		margin: auto;
	}
	img {
		width: ;
	}
	.nav-area {
		float: none;
		margin-top: 0;
	}
	.nav-area li a {
		padding: 5px;
		font-size: 11px;
	}
	.nav-area {
		text-align: center;
	}
	.welcome-text {
		width: 100%;
		height: auto;
		margin: 30% 0;
	}
	.welcome-text h1 {
		font-size: 30px;
	}
}
input[type="submit"] {
   
  background-color: black; /* Green */
  border: none;
  color: white;
  
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
 </style> 
 <div class="welcome-text">
	<h1 align="center">Welcome, Enter The User Details</h1>
	<form:form method="POST" action="/addUser" modelAttribute="user">
		<table align="center">
			<tr>
				<td><form:label path="userName">User Name</form:label></td>
				<td><form:input path="userName" /></td>
			</tr>
			<tr>
				<td><form:label path="firstName">Full Name</form:label></td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
				<td><form:label path="lastName">Mentions your FoodHabits:</form:label></td>
				<td><form:input path="lastName" /></td>
			<tr>
				<tr>
				<td><form:label path="location">Do you have any Health Issues?</form:label></td>
				<td><form:input path="location" /></td>
			</tr>
			<tr>
				<td><form:label path="phNum">Mention your Health Issues:</form:label></td>
				<td><form:input path="phNum" /></td>
			</tr>
			<tr>
				<td><form:label path="email">E-Mail</form:label></td>
				<td><form:input path="email" /></td>
			<tr>
				<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:password path="password" /></td>
			<tr>
			
				
				<td><input align="center"  style="margin-left:210px;" type="submit" value="Register" /></td>
				
			</tr>
			
		</table>
	</form:form>
	</div>
</body>
</html>