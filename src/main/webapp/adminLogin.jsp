<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin LogIn</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<%@include file ="navbar.jsp"%>
<body>
<div class="form-admin">
<form action="admin" method="post">
<h4>Admin LogIn</h4>
<label for="name">Name</label>
<input name="name" id="name" type="text"></input>
<br>
<br>
<label for="password">Password</label>
<input name="password" id="password" type="password"></input>
<br>

<button type="submit">Login</button>
<br>

</form>
</div>

</body>
</html>