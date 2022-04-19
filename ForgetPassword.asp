<%
dim con,rs,sRootl,sSqll
set con=server.CreateObject("adodb.connection")
set rs=server.CreateObject("adodb.recordset")


con.Open session("con")

sUserId=trim(Request.QueryString("userid"))
semVal=trim(Request.QueryString("semVal"))
session("hidUserId")=trim(Request.form("hidUserId"))
session("hidsemVal")=trim(Request.form("hidsemVal"))
if session("hidUserId")="" then
	if sUserId=""  then
	%>	
	<span style="color:red;font-weight:bold">User Id must not be blank !</span>
	<br/>
	<a href="login.htm">Back To Login Page !</a>

	<%
	elseif semVal="" then
	%>
	<span style="color:red;font-weight:bold">Semester must not be blank !</span>
	<br/>
	<a href="login.htm">Back To Login Page !</a>
	<%
	end if
else
sUserId=session("hidUserId")
semVal=session("hidsemVal")
end if
%>
<%
sPetName=Request.Form("txtPetName")


%>
<%'=sPetName%>
<%
if sUserId<>"" and sPetName<>"" then
	dim sPass
'Response.Write "select * from Register where User_ID='"&sUserId&"' and [Pet name]='"&sPetName&"' and Semester='"&semVal&"'"
	sSql="select * from Register where User_ID='"&sUserId&"' and Pet_name='"&sPetName&"' and Semester='"&semVal&"'"
	rs.Open sSql,con,1
	%>
	
	<%'=sSql%>
	
	<%'=rs(2)%>
	
	<%
	'Response.End
	dim  bchk
	bchk=false
	while not rs.EOF
		bchk=true
		sPass= rs(2)
		rs.movenext
	wend
	if not bchk then
		Response.Write "<span style='font-weight:bold;color:red'>Please check your User-id or Pet name or Semester you belong !</span>"
	end if

end if




%>
<html>
<head>
<TITLE>
	Forget your password?
</TITLE>
<style>


.a{width:150;height:25;color:green;background-color:tan;font-size:15;font-family:arial}
</style>
</head>
<body bgColor=#d7ffcf>
<form name="frm" action="ForgetPassword.asp" method="post">
<P>
This page is specially build up, due to those persons who is forget there password and doesn't open their
site. Here we ask simply questions and show there password. That question was asked at first when they registrate
their form.
<hr/>
</p>
<h3>What is your pet name?</h3>
<input type="text" size="40" name="txtPetName" value="<%=Request.Form("txtPetName")%>"/>
<br/>
<br/>
<div align="center"><input type="submit" class="a" value="Fetch Password !" style="cursor:hand" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"/></div>
<h3> Your Password is:</h3>
<input type="text" size="40" maxlenght="20" readonly1="true"  id=text2 name=text2 value="<%=sPass%>">
<br/>
<br/>
<div align="center">
<input onclick="window.location.href='login.htm'" style="cursor:hand" type=button class1="aFilter"  value="Back"  id=button2 name=button2 class="a" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'">
</div>
<input type="hidden" name="hidUserId" value="<%=sUserId%>"/>
<input type="hidden" name="hidsemVal" value="<%=semVal%>"/>
</form>
</body>
</html>




