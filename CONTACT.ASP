<html>
<head>
<title>

	Student's details submitted
</title>
</head>
<body background="end.gif">
<%
dim org,na,tit,add,cit,stat,zip,phone,fax,email,com


org=trim(request.form("organization"))

na=trim(request.form("sName"))

tit=trim(request.form("title"))

add=trim(request.form("address"))

cit=trim(request.form("city"))

stat=trim(request.form("state"))

zip=trim(request.form("zip"))

phone=trim(request.form("phone"))

fax=trim(request.form("fax"))
if fax="" then fax=0

email=trim(request.form("email"))

com=trim(request.form("comments"))

dim con,rsl,sRootl,sSqll
set con=server.CreateObject("adodb.connection")
set rsl=server.CreateObject("adodb.recordset")

con.Open session("con")
'rsl.Open "select * from [contact] where [na]='"&Name&"'",conl,1

'if rsl.RecordCount<>0 then
	'Response.Write "Sorry Name exists ! Kindly choose a different Name !<br>"
	'Response.Write "<a href=button.htm>Back</a>"
'else
	
	sSqll="insert into contact values('"&org&"','"&na&"','"&tit&"','"&add&"','"&cit&"','"&stat&"','"&zip&"','"&phone&"','"&fax&"','"&email&"','"&com&"')"
	'Response.Write sSqll
	con.Execute sSqll
%>
	<div style="font-size:30;color:lime;font-family:arial">
		Your details are sucessfully registered !!
	</div>
<%
'end if
%>


<script>
//alert("<%=sSql%>")
</script>
</body>







</html>




















