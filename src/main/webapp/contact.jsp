<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<%@include file ="navbar.jsp"%>
<body>

<div class="form-contact">
<form action="Contact" method="post">
<h4>Please Fill your Details</h4>
<label for="user name">Name:</label>
<input name="user name" id="user name" type="text"></input>
<br>
<br>
<label for="phone number">Phone Number:</label>
<input name="phone number" id="phone number" type="number"></input>
<br>
<br>
<label for="mail">Email ID:</label>

<input name="mail" id="mail" type="email"></input>
<br>
<br>
<label for="comment">Comments:</label>

<textarea  rows="" cols=""></textarea>
<br>
<br>
<button type="submit">Submit</button>
</form>
</div>

</body>
</html>