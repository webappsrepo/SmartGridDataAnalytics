<!DOCTYPE HTML>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<HTML>
<head>
<h1>Filteration Window</h1>
</head>
<body>
<FORM action="/smartgrid_dataanalytics/analyzeddataservlet" method="GET">
<TABLE style="background-color: #ECE5B6;" WIDTH="30%" >
<TR>
<TH width="50%">Transformer Id</TH>
<TD width="50%"><INPUT TYPE="text" NAME="transformer_id"></TD>
</tr>
<TR>
<TH width="50%">Customer Id</TH>
<TD width="50%"><INPUT TYPE="text" NAME="consumer_id"></TD>
</tr>

<TR>
<TH></TH>
<TD width="50%"><INPUT TYPE="submit" name="actionType" value="VIEW" ></TD>
</tr>
</TABLE>
<br>
</table>
</FORM>
<FORM action="trans_search2.jsp" method="post">
<TABLE style="background-color: #ECE5B6;" WIDTH="30%" >
<TR>
<TH width="50%">Transformer Id</TH>
<TD width="50%"><INPUT TYPE="text" NAME="transformer_id"></TD>
</tr>
<TR>

<TR>
<TH></TH>
<TD width="50%"><INPUT TYPE="submit" VALUE="Search"></TD>
</tr>
</TABLE>
<br>
</table>
</FORM>
</body>
</html>