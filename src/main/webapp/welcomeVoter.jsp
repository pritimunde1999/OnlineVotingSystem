<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Voter</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<%@include file ="navbar.jsp"%>


<body>
<div class="form-welcomeVoter">
<form action="vote" method="post">
<h4>Please Fill the Required Details</h4>
<label for="voter number">Voter ID</label>
<input name="voter number" id="voter number" type="text"></input>
<br>
<br>
<label for="party">Choose a Party</label>

<select name="party" id="party">
<option value="BJP">Bhartiy Janta Party</option>
<option value="shivsena">Shivsena</option>
<option value="AAP">Aam Aadami Party</option>
<option value="NCP">National Congress Party</option>
<option value="RVNP">Rashtrawadi Congress Party</option>
<option value="BSP">Bahujan Samaj Party</option>
<option value="NOTA">None of the Above</option>
</select>
<br>
<button type="submit">Submit</button>
</form>
</div>
</body>
</html>