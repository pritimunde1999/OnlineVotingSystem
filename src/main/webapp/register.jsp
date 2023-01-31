<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Register</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<%@include file ="AdminNavbar.jsp"%>
<body>

<div class="register">
<form action="RegisterVoter" method="post">
<label for="user_name">Name:</label>
<input name="user_name" id="user_name" type="text"></input>
<br>
<br>

<label for="phone_number">Phone Number:</label>
<input name="phone_number" id="phone_number" type="number"></input>
<br>
<br>

<label for="mail">Email ID:</label>
<input name="mail" id="mail" type="email"></input>
<br>
<br>

<label for="VoterID">Voter ID:</label>
<input name="VoterID" id="VoterID" type="text"></input> 
<br><br>

<label for="DOB">Date of Birth:</label>
<input name="DOB" id="DOB" type="date"></input> 
<br><br>

<label for="address">Address:</label>

<textarea name="address" id="address" rows="4" cols="8"></textarea>
<br>

<button type="submit">Register</button>
</form>
</div>

</body>
</html>