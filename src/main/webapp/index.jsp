<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OnlineVotingSystem</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<%@include file ="navbar.jsp"%>
<body>
<div class="form-container">
<form action="VoterLogin" method ="post">
<h4>Enter your Voter ID number</h4>
<label for="voter number">Voter ID</label>
<input name="voter number" id="voter number" type="text" placeholder="for eg:ABC1234567"></input>
<br>
<button type="submit">Login</button>
<br>
<a href="adminLogin.jsp">Admin</a>
</form>
</div>
</body>
</html>