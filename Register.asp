<html>
<head>
<title>
     Registered Sucessfully !
</title>
<style>
.a{width:50;height:50;color:black;background-color:brown;font-size:15;font-family:arial black}
.b{width:200;height:50;color:black;background-color:brown;font-size:15;font-family:arial black}
</style>
</head>
<body bgcolor="brown">

<%
dim sName,sUserId,sPass,sPassRe,sFat,sNic,sSex,sAge,sSels,sSelc,sSem

sName=trim(request.form("sname"))
'response.write sName


'response.write "<br>"


sUserId=trim(request.form("sUserId"))
'response.write sUserId
'response.write "<br>"

sPass=trim(request.form("spass"))
'response.write sPass
'response.write "<br>"

sPassRe=trim(request.form("rpass"))
'response.write sPassRe
'response.write "<br>"

sFat=trim(request.form("fname"))
'response.write sFat
'response.write "<br>"

sNic=trim(request.form("pname"))
'response.write sNic
'response.write "<br>"

sSex=trim(request.form("r"))
'response.write sSex
'response.write "<br>"

sAge=trim(request.form("a"))
'response.write sAge
'response.write "<br>"

sSels=trim(request.form("selState"))
'response.write sSels
'response.write "<br>"

sSelc=trim(request.form("selCity"))
'response.write sSelc
'response.write "<br>"

sSem=trim(request.form("sem"))

dim con,rs,sRoot,sSql
set con=server.CreateObject("adodb.connection")
set rs=server.CreateObject("adodb.recordset")

con.Open session("con")
rs.Open "select * from Register where User_ID='"&sUserId&"' and Semester='"&sSem&"'",con,1
dim bChk
bChk=false
while not rs.EOF
	bChk=true
	rs.MoveNext
wend
if bChk then
	Response.Write "<b>Sorry User Id exists ! Kindly choose a different User Id !</b><br><br><br><br><br><br><br><br><br><br>"
	Response.Write "<div align='right'><button class='a'onclick=location.href='button.htm'>Back</button></div>"
	'Response.Write " <a href='button.htm'>Back</a> "
else
	
	sSql="insert into Register values('"&sName&"','"&sUserId&"','"&sPass&"','"&sFat&"','"&sNic&"','"&sSex&"','"&sAge&"','"&sSels&"','"&sSelc&"','"&sSem&"')"
	'Response.Write sSql
	con.Execute sSql
%>
<DIV style="FONT-SIZE: 30px; COLOR: lime; FONT-FAMILY: arial">Thank You ! You are now registered !</DIV>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div align="right"><BUTTON class="b" onclick="location.href='login.htm'" style="cursor:hand" onmouseover="this.style.color='lime'" onmouseout="this.style.color='black'">Go to login page</BUTTON>
<%
end if
%>


</body>


</html>