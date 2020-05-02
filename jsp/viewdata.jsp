<%@ page language="java" import="myPackage.AnalyzedDataDTO" session="true"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%> 
<%@ page import="java.util.ArrayList"%>
<%@page contentType="text/html"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<h1>Smart Grid Data</h1>
</head>
<body>

<table cellpadding="15" border="1" style="background-color: #ffffcc;">
<tr>
<th>consumer_id</th>
<th>transformer_id</th>
<th>Start_Time</th>
<th>End_Time</th>
<th>total_power_cosumption</th>
<th>technical_loss</th>
<th>total_power_generation</th>
</tr>
<%ArrayList<AnalyzedDataDTO> userList =  
            (ArrayList<AnalyzedDataDTO>)session.getAttribute("about"); 
        for(AnalyzedDataDTO s:userList){%> 
<tr>
				<td><%=s.getConsumerId()%></td> 
                <td><%=s.getTransformerId()%></td> 
                <td><%=s.getStartTime()%></td>
</tr>
<%}%> 
</table>

</body>
</html>