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
<form action="/smartgrid_dataanalytics/analyzeddataservlet"  method="GET" >
 Consumer Id :<br>
  <input type="text" name="consumer_id" required="true">
  <br>
  Transformer Id:<br>
  <input type="text" name="transformer_id" required="true">
  <br><br>
 
  <input type="submit" mode="Search">
  <p>
							
						</p>
</form> 


</body>
</html>