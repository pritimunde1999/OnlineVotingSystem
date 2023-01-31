

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.PreparedStatement" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<link rel="stylesheet" type="text/css" href="styles.css">

<%

String a[] = new String[100];
String s[] = {"Bhartiy Janta Party","Shivsena","Aam Aadami Party","National Congress Party","Rashtrawadi Congress Party","Bahujan Samaj Party","None of the Above"};
Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineVotingDb","root","Priti@123");

PreparedStatement preparedStatement = con.prepareStatement("select partie,count(partie) as c from vote group by partie");
ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select partie,count(partie) as c from vote group by partie");


int i=0;
while(rs.next()){
    //int temp = Integer.valueOf(rs.getString("c"));
   a[i]= rs.getString("c");
   i++;
    
}

%>
</head>

<%@include file ="AdminNavbar.jsp"%>
<body>

<div class="checktable">

<table>
<tr>
<th>Symbol</th>
<th>Party Name</th>
<th>Votes</th>
</tr>

<tr>
<td>
<img src="https://www.shutterstock.com/image-vector/orange-lotus-bjp-logo-vector-260nw-1750364873.jpg"  alt="BJP"></td>
<td>Bhartiy Janta Party</td>
<td><%=a[0]==null?0:a[0]%></td>
</tr>

<tr>
<td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Logo_of_Shiv_Sena.svg/2048px-Logo_of_Shiv_Sena.svg.png"  alt="shivsena"></td>
<td>Shivsena</td>
<td><%=a[1]==null?0:a[1]%></td>
</tr>


<tr>
<td><img src="https://smedia2.intoday.in/indiatoday/images/stories/2015April/aap-logo_650_040815073952.jpg"  alt="AAP"></td>
<td>Aam Aadami Party</td>
<td><%=a[2]==null?0:a[2]%></td>
</tr>

<tr>
<td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Indian_National_Congress_hand_logo.png/600px-Indian_National_Congress_hand_logo.png"  alt="NCP"></td>
<td>National Congress Party</td>
<td><%=a[3]==null?0:a[3]%></td>
</tr>

<tr>
<td><img src="https://www.pngitem.com/pimgs/m/151-1512618_rashtrawadi-congress-party-logo-hd-png-download.png" alt="RVNP"></td>
<td>Rashtrawadi Congress Party</td>
<td><%=a[4]==null?0:a[4]%></td>
</tr>

<tr>
<td><img src="https://n4.sdlcdn.com/imgs/i/b/g/MAHALAXMI-ART-CRAFT-BSP-Logo-SDL687949465-1-5e451.jpg" alt="BSP"></td>
<td>Bahujan Samaj Party</td>
<td><%=a[5]==null?0:a[5]%></td>
</tr>

<tr>
<td><img src="https://i.ndtvimg.com/mt/2013-11/NOTA_360x270.jpg" alt="NOTA"></td>
<td>None of the Above</td>
<td><%=a[6]==null?0:a[6]%></td>
</tr>


</table>

</div>
</body>
</html>