<html>
<head>
<title>
Logging In sucessfully done !
</title>
<style>

.a{width:50;height:25;color:black;background-color:skyblue;font-size:15;font-family:arial}

</style>
<basefont face="arial"/>
</head>

<body bgcolor1="skyblue">

<%
dim User,PasWrd

User=trim(request.form("userID"))

PasWrd=trim(Request.Form("password"))

sem=trim(Request.Form("sem"))

session("sem")=sem
session("uid")=User



dim con,rs,sRoot,sSql
set con=server.CreateObject("adodb.connection")
set rs=server.CreateObject("adodb.recordset")
con.Open session("con")
rs.Open "select * from Register where User_ID='"&User&"' and Password='"&PasWrd&"' and Semester='"&sem&"'",con,1
'Response.Write "<br>"

'Response.Write "select * from [Register] where [User_ID]='"&User&"' and [Password]='"&PasWrd&"'"
'Response.Write "<br>"

'if rs.RecordCount=0 then
	'Response.Write "<b>Sorry Unsucessful LogIn ! Kindly Retry with your User Id and Password !</b><br><br><br><br>"
	'Response.Write "<div align=right><button style='cursor:hand' class=a onclick=""location.href='login.htm'"">Back</button></div> "
   

'else

	
	'sSql="insert into login values('"&User&"','"&PasWrd&"')"
	'con.Execute sSql
%>
<%
	'rs.Close
	'rs.Open ""
dim Semister
Semister=rs(9)
session("semVal")=Semister
select case Semister

	case "1st sem"


%>
<form action="takeExam.asp" method="post" name="fstSem" onsubmit="return chkRadl()">
<script>
	function chkRadl(){
		bchk=false
		for(i=0;i<fstSem.r.length;i++){
			//alert(sndSem.r[i].checked)
			if(fstSem.r[i].checked==true){
				bchk=true
			}
		
		}
		if(bchk){
			return true
		}
		else{
			alert("Please choose any subject!!")
			return false
			}
	}


</script>
<script>
	document.cookie="test=start"
</script>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Choose any subject of First Semester&nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="ENG"  name=r>Technical English & Report Writing
<br>
<input type=radio Value="MATH"  name=r>Mathematical Foundation
<br>
<input type=radio Value="C"  name=r>Programming in C
<br>
<input type=radio Value="MP"  name=r>Microprocessor & Computer Organization
<br>
<input type=radio Value="STAT"  name=r>Probability & Statistics
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<br>
<br>
<div align="right"><input type="submit" style="cursor:hand" class1="a" value="Go" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'" style="border:1 black solid;background-color:white;width:150"></input></div>
</form>
<%
case "2nd sem"
%>
<form action="takeExam.asp" name="sndSem" method="post" onsubmit="return chkRad()">

<script>
	function chkRad(){
		bchk=false
		for(i=0;i<sndSem.r.length;i++){
			//alert(sndSem.r[i].checked)
			if(sndSem.r[i].checked==true){
				bchk=true
			}
		
		}
		if(bchk){
			return true
		}
		else{
			alert("Please choose any subject!!")
			return false
			}
	}


</script>
<script>
	document.cookie="test=start"
</script>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Choose any subject of Second Semester&nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
	<input type=radio Value="BC"  name=r>Business Communication & Personality Development
	<br>
	<input type=radio Value="DM"  name=r>Discrete Mathematical Structure with Applications to computer science
	<br>
	<input type=radio Value="DC"  name=r>Data Structures using C
	<br>
	<input type=radio Value="COBOL"  name=r>Business Data Processing COBOL
	<br>
	<input type=radio Value="SAD"  name=r>System Analysis & Design
</div>
<div>&nbsp;</div>
</fieldset>
<br>


<div align="right"><input type="submit" style="cursor:hand" class1="a" value="Go" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'" style="border:1 black solid;background-color:white;width:150"></input></div>

</form>
<%
case "3rd sem"
%>
<form action="takeExam.asp" method="post" id=form1 name=form1 onsubmit="return chkRadt()">

<script>
	function chkRadt(){
		bchk=false
		for(i=0;i<form1.r.length;i++){
			//alert(sndSem.r[i].checked)
			if(form1.r[i].checked==true){
				bchk=true
			}
		
		}
		if(bchk){
			return true
		}
		else{
			alert("Please choose any subject!!")
			return false
			}
	}


</script>
<script>
	document.cookie="test=start"
</script>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Choose any subject of Third Semester&nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<br>
<input type=radio Value="DBMS"  name=r>Database Management systems
<br>
<input type=radio Value="OOP"  name=r>Object Oriented Programming using C++
<br>
<input type=radio Value="OS"  name=r>Operating System
<br>
<input type=radio Value="ACC"  name=r>Accounting & Financial Management
<br>
<input type=radio Value="CONA"  name=r>Computer Oriented Numerical Methods
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<br>
<br>
<div align="right"><input type="submit" style="cursor:hand" class1="a" value="Go" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'" style="border:1 black solid;background-color:white;width:150"></input></div>

</form>
<%
case "4th sem"
%>
<form action="takeExam.asp" method="post" id=form1 name=form1 onsubmit="return chkRadv()">

<script>
	function chkRadv(){
		bchk=false
		for(i=0;i<form1.r.length;i++){
			//alert(sndSem.r[i].checked)
			if(form1.r[i].checked==true){
				bchk=true
			}
		
		}
		if(bchk){
			return true
		}
		else{
			alert("Please choose any subject!!")
			return false
			}
	}


</script>
<script>
	document.cookie="test=start"
</script>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Choose any subject of Forth Semester&nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<br>
<input type=radio Value="SS"  name=r>System Software
<br>
<input type=radio Value="CG"  name=r>Computer Graphics
<br>
<input type=radio Value="SE"  name=r>Software Engineering
<br>
<input type=radio Value="UNIX"  name=r>Unix Operating System
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<br>
<br>
<div align="right"><input type="submit" style="cursor:hand" class1="a" value="Go" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'" style="border:1 black solid;background-color:white;width:150"></input></div>

</form>
<%
case "5th sem"
%>
<form action="takeExam.asp" method="post" id=form1 name=form1 onsubmit="return chkRada()">

<script>
	function chkRada(){
		bchk=false
		for(i=0;i<form1.r.length;i++){
			//alert(sndSem.r[i].checked)
			if(form1.r[i].checked==true){
				bchk=true
			}
		
		}
		if(bchk){
			return true
		}
		else{
			alert("Please choose any subject!!")
			return false
			}
	}


</script>
<script>
	document.cookie="test=start"
</script>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Choose any subject of Fifth Semester&nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<br>
<input type=radio Value="JAVA"  name=r>Java Programming & Web Page Development
<br>
<input type=radio Value="ADA"  name=r>Analysis & Design of Algorithms
<br>
<input type=radio Value="CN1"  name=r>Computer Network-I
<br>
<input type=radio Value="SM"  name=r>Simulation & Modeling
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<br>
<br>
<div align="right"><input type="submit" style="cursor:hand" class1="a" value="Go" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'" style="border:1 black solid;background-color:white;width:150"></input></div>

</form>
<%
case "6th sem"
%>

<form action="takeExam.asp" method="post" id=form1 name=form1 onsubmit="return chkRado()">

<script>
	function chkRado(){
		bchk=false
		for(i=0;i<form1.r.length;i++){
			//alert(sndSem.r[i].checked)
			if(form1.r[i].checked==true){
				bchk=true
			}
		
		}
		if(bchk){
			return true
		}
		else{
			alert("Please choose any subject!!")
			return false
			}
	}


</script>
<script>
	document.cookie="test=start"
</script>
<br>
<br>

<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Choose any subject of Sixth Semester&nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<br>
<input type=radio Value="CN2"  name=r>Computer Network-II
<br>
<input type=radio Value="AI"  name=r>Artificial Intelligence
<br>
<input type=radio Value="IIT"  name=r>Internet & Information Technology
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<br>
<br>
<div align="right"><input type="submit" style="cursor:hand" class1="a" value="Go" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'" style="border:1 black solid;background-color:white;width:150"></input></div>

</form>


<%
end select
'end if
%>

</body>
</html>




