
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<h1>Smart Grid Data</h1>
</head>
<body>
<%
Connection con;
Class.forName("com.mysql.jdbc.Driver");
con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/sgdanalyser", "root",null);
PreparedStatement ps=(PreparedStatement)con.prepareStatement("SELECT * FROM SGDA_POWER_ANALYZE_DATA");
ResultSet rs=ps.executeQuery();
%>
<table cellpadding="15" border="1" style="background-color: #ffffcc;">
<tr>
<td>consumer_id</td>
<td>transformer_id</td>
<td>Start_Time</td>
<td>End_Time</td>
<td>total_power_cosumption</td>
<td>technical_loss</td>
<td>total_power_generation</td>
</tr>
<%
while (rs.next()) {
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
</tr>
<% } %>

</table>

</body>
</html>