<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<BODY>
<%

set con=server.CreateObject("adodb.connection")
set rs=server.CreateObject("adodb.recordset")

con.Open session("con")
if trim(Request.QueryString("showsem"))<> "" then
	sSQl="select * from result_web where User_id='" & trim(Request.QueryString("usrid")) & "' and Semester='" & trim(Request.QueryString("showsem")) & "'"
else
	sSql="select * from result_web where User_id='"&trim(Request.QueryString("usrid"))&"' order by Semester"
  	
end if
rs.Open sSql,con,1

%>

<%'=sSql%>
<%

'Response.End
%>
<table>
<table cellspacing="0"  width="100%" border bordercolor="blue" align="center">

<th>
User Id
</th>
<th>
Semester
</th>
<th>
Subject
</th>
<th>
Score
</th>
<th>
Grade
</th>
<th>
Date/Time
</th>

<tbody  align="center">
<%

while not  rs.EOF
%>

<tr>
	<td>
		<%=rs(0)%>
	</td>
	<td>
		<%=rs(1)%>
	</td>
	<td>
		<%=rs(2)%>
	</td>
	<td>
		<%=rs(3)%>
	</td>
	<td>
		<%=rs(4)%>
	</td>
	<td>
		<%=rs(5)%>
	</td>
</tr>
<%
	rs.MoveNext
wend


%>

</tbody>
</table>
</BODY>
</HTML>
