
<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<style>

.a{width:150;height:25;color:black;background-color:white;font-size:15;font-family:arial}

</style>
<basefont face="arial"/>
</HEAD>
<BODY bgColor=White>

<%
	'Response.Write Request.Form("r")
dim sSubject
sSubject=trim(Request.Form("r"))
session("sUsrSub")=sSubject
'Response.Write sSubject
%>

<%
set con=server.CreateObject("adodb.connection")
set rs=server.CreateObject("adodb.recordset")
sRoot= server.MapPath("./")
con.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & sRoot & "\OnLineExamDB.mdb;"
sSql="select count(*) from result where User_id='"&trim(session("uid"))&"' and Semester='"&trim(session("sem"))&"' and Subject='"&sSubject&"' and Grade<>'Failed'"
rs.Open sSql,con	




%>
<%'=sSql%>
<br>
<%
if rs(0)<> 0 then
%>
<script>
	alert("You have already Passed this exam !")
    history.back()
	
</script>
<%
Response.end
end if


%>


<%
if sSubject="C" then 
%>


<br>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.r,frm.ri,frm.rii,frm.ro,frm.rp,frm.pr,frm.rq,frm.qr,frm.wr,frm.cr)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Programming in C</b></div>
<div align="right" id="eTime" style="font-size:13"></div>

<br>
<fieldset width="500">
<legend><b style="FONT-SIZE: 17px; COLOR: green">&nbsp;C was originally developed by &nbsp;</b>
</legend>
<div style="FONT-SIZE: 8px">&nbsp;</div>
<div style="PADDING-LEFT: 12px">
<input type=radio Value=""  name=r>H.K.Gundurao
<br>
<input type=radio Value=""  name=r>N.S.Manjunath
<br>
<input type=radio Value=""  name=r>M.N.Nachappa
<br>
<input type=radio Value="4"  name=r>Dennis.M.Ritchie
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="FONT-SIZE: 17px; COLOR: green">&nbsp;C was developed in the year of &nbsp;</b>
</legend>
<div style="FONT-SIZE: 8px">&nbsp;</div>
<div style="PADDING-LEFT: 12px">
<input type=radio Value="1"  name=ri>70s
<br>
<input type=radio Value=""  name=ri>80s
<br>
<input type=radio Value=""  name=ri>90s
<br>
<input type=radio Value=""  name=ri>60s
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="FONT-SIZE: 17px; COLOR: green">&nbsp;Which one adds the characters of one string to another  &nbsp;</b>
</legend>
<div style="FONT-SIZE: 8px">&nbsp;</div>
<div style="PADDING-LEFT: 12px">
<input type=radio Value="1"  name=rii>strcat
<br>
<input type=radio Value=""  name=rii>strchr
<br>
<input type=radio Value=""  name=rii>strcmp
<br>
<input type=radio Value=""  name=rii>strcmpi
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="FONT-SIZE: 17px; COLOR: green">&nbsp;Give a short description of isalnum() &nbsp;</b>
</legend>
<div style="FONT-SIZE: 8px">&nbsp;</div>
<div style="PADDING-LEFT: 12px">
<input type=radio Value="1"  name=ro>Test whether a character is an alphabet or a number
<br>
<input type=radio Value=""  name=ro>Character classification macro that returns non-zero if c is a letter(A-z or a-z)
<br>
<input type=radio Value=""  name=ro>Tests whether a character is an ascii(0 to 127) character.
<br>
<input type=radio Value=""  name=ro>Character classification macro that returns non-zero value if c is a digit('0'-'9')
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="FONT-SIZE: 17px; COLOR: green">&nbsp;printf() command is used for &nbsp;</b>
</legend>
<div style="FONT-SIZE: 8px">&nbsp;</div>
<div style="PADDING-LEFT: 12px">
<input type=radio Value=""  name=rp>To input a string
<br>
<input type=radio Value="2"  name=rp>To display a string
<br>
<input type=radio Value=""  name=rp>To concatenate a string to another string
<br>
<input type=radio Value=""  name=rp>To convert a string to ascii value
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Choose the right answer of this expression, 7%5+10.0*10/3 &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=pr>32.0
<br>
<input type=radio Value=""  name=pr>21.7
<br>
<input type=radio Value=""  name=pr>32.7
<br>
<input type=radio Value=""  name=pr>45.76
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;The 'break' Statement is used to &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=rq>Continue loops
<br>
<input type=radio Value="2"  name=rq>Terminate loops
<br>
<input type=radio Value=""  name=rq>Returns into loops
<br>
<input type=radio Value=""  name=rq>Divide into loops
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which one is a header file?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=qr>#include"stdio.h"
<br>
<input type=radio Value=""  name=qr>printf();
<br>
<input type=radio Value=""  name=qr>scanf();
<br>
<input type=radio Value=""  name=qr>getch();
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;The inverse of getchar() is &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=wr>getch()
<br>
<input type=radio Value=""  name=wr>getche()
<br>
<input type=radio Value=""  name=wr>return()
<br>
<input type=radio Value="4"  name=wr>putchar()
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which function we used to count the number of characters in the string? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=cr>strlen()
<br>
<input type=radio Value=""  name=cr>strcat()
<br>
<input type=radio Value=""  name=cr>strcmp()
<br>
<input type=radio Value=""  name=cr>strcpy()
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>
<%

elseif sSubject="ENG" then 
%>
<!--insert Technical English & Report Writing questions-->
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.c,frm.t,frm.ca,frm.cri,frm.z,frm.za,frm.zb,frm.zm,frm.zn,frm.zt)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Technical English & Report Writing</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which one is not a present tense &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=c>was
<br>
<input type=radio Value=""  name=c>is
<br>
<input type=radio Value=""  name=c>have
<br>
<input type=radio Value=""  name=c>are
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which is Present continuous tense &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=t>I am going to the college
<br>
<input type=radio Value=""  name=t>I was gone to the college
<br>
<input type=radio Value=""  name=t>I will go to the college
<br>
<input type=radio Value=""  name=t>I have to go to the college
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;"The pasent had died before the doctor came", which tense? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=ca>Present continuous
<br>
<input type=radio Value="2"  name=ca>Past perfect
<br>
<input type=radio Value=""  name=ca>Future
<br>
<input type=radio Value=""  name=ca>Past continuous
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Who got Gitanjali award? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=cri>John Smith
<br>
<input type=radio Value=""  name=cri>Rogger
<br>
<input type=radio Value=""  name=cri>Dannis Rithie
<br>
<input type=radio Value="4"  name=cri>Rabindranath Tagore
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;The story "Packing" who was written? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=z>Jerome K.Jerome
<br>
<input type=radio Value=""  name=z>Willium 
<br>
<input type=radio Value=""  name=z>Dan W.Patterson
<br>
<input type=radio Value=""  name=z>Sarat chandra chttopadyay
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;In an application, where the address was written? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=za>Top left
<br>
<input type=radio Value=""  name=za>Top right
<br>
<input type=radio Value=""  name=za>Bottom left
<br>
<input type=radio Value=""  name=za>Bottom right
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Who wrote "The Listener" poetry? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=zb>Rogger 
<br>
<input type=radio Value=""  name=zb>Robinson 
<br>
<input type=radio Value="3"  name=zb>Walter Delamer
<br>
<input type=radio Value=""  name=zb>Rabindranath Tagore
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;How many types of tenses has grammer? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=zm>Two
<br>
<input type=radio Value=""  name=zm>One
<br>
<input type=radio Value="3"  name=zm>Three
<br>
<input type=radio Value=""  name=zm>Four
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Rogger goes to his farm. Here Rogger is a &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=zn>Adjective
<br>
<input type=radio Value=""  name=zn>Pronoun
<br>
<input type=radio Value=""  name=zn>Conjunction
<br>
<input type=radio Value="4"  name=zn>Noun
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Who wrote "Art of letter writing" ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=zt>Jhon Smith
<br>
<input type=radio Value=""  name=zt>Willium
<br>
<input type=radio Value="3"  name=zt>Jacob
<br>
<input type=radio Value=""  name=zt>Mayor
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>
<%
elseif sSubject="MATH" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.z,frm.z2,frm.z3,frm.z4,frm.z5,frm.z6,frm.z7,frm.z8,frm.z9,frm.z10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Mathematical Foundation</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;How many integers between 1 and 567 are divisible by 3, 5 or 7? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=z>200
<br>
<input type=radio Value=""  name=z>100
<br>
<input type=radio Value="3"  name=z>308
<br>
<input type=radio Value=""  name=z>340
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;A U B, This is shows that A and B are  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=z2>Intersection
<br>
<input type=radio Value="2"  name=z2>Union
<br>
<input type=radio Value=""  name=z2>Belongs
<br>
<input type=radio Value=""  name=z2>Subset
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What do u mean by a set theory ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=z3>A set is intuitively understood as a well defined collection of objects.
<br>
<input type=radio Value=""  name=z3>A set is a collection of events.
<br>
<input type=radio Value=""  name=z3>A set is a numerical collections.
<br>
<input type=radio Value=""  name=z3>A set is an integer only.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;If A=(1,2)and B=(3,1,4), then A x B = ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=z4>{(3,1),(3,2),(1,1),(1,2),(4,1),(4,2)}
<br>
<input type=radio Value=""  name=z4>{(1,1),(1,2),(2,1),(2,2)}
<br>
<input type=radio Value="3"  name=z4>{(1,3),(1,1),(1,4),(2,3),(2,1),(2,4)}
<br>
<input type=radio Value=""  name=z4>{(3,3),(3,1),(3,4),(1,3),(1,1),(1,4),(4,3),(4,1),(4,4)}
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>


<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;If U={1,2,3,4,5}is the universal set and A={1,2},B={2,3},C={3,5}then A x B'=?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=z5>{(1,1),(1,4),(1,5),(2,1),(2,4),(2,5)}
<br>
<input type=radio Value=""  name=z5>{(3,3),(3,5),(4,3),(4,5),(5,3),(5,5)}
<br>
<input type=radio Value=""  name=z5>{(3,1),(3,2),(3,4),(4,1),(4,2),(4,4),(5,1),(5,2),(5,4)}
<br>
<input type=radio Value=""  name=z5>{(3,2),(3,3),(4,2),(4,3),(5,2),(5,3)}
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;How many integers between 1 and 567 are divisible by 3, 5 or 7? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=z6>200
<br>
<input type=radio Value=""  name=z6>100
<br>
<input type=radio Value="3"  name=z6>308
<br>
<input type=radio Value=""  name=z6>340
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;A U B, This is shows that A and B are  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=z7>Intersection
<br>
<input type=radio Value="2"  name=z7>Union
<br>
<input type=radio Value=""  name=z7>Belongs
<br>
<input type=radio Value=""  name=z7>Subset
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What do u mean by a set theory ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=z8>A set is intuitively understood as a well defined collection of objects.
<br>
<input type=radio Value=""  name=z8>A set is a collection of events.
<br>
<input type=radio Value=""  name=z8>A set is a numerical collections.
<br>
<input type=radio Value=""  name=z8>A set is an integer only.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;If A=(1,2)and B=(3,1,4), then A x B = ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=z9>{(3,1),(3,2),(1,1),(1,2),(4,1),(4,2)}
<br>
<input type=radio Value=""  name=z9>{(1,1),(1,2),(2,1),(2,2)}
<br>
<input type=radio Value="3"  name=z9>{(1,3),(1,1),(1,4),(2,3),(2,1),(2,4)}
<br>
<input type=radio Value=""  name=z9>{(3,3),(3,1),(3,4),(1,3),(1,1),(1,4),(4,3),(4,1),(4,4)}
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>


<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;If U={1,2,3,4,5}is the universal set and A={1,2},B={2,3},C={3,5}then A x B'=?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=z10>{(1,1),(1,4),(1,5),(2,1),(2,4),(2,5)}
<br>
<input type=radio Value=""  name=z10>{(3,3),(3,5),(4,3),(4,5),(5,3),(5,5)}
<br>
<input type=radio Value=""  name=z10>{(3,1),(3,2),(3,4),(4,1),(4,2),(4,4),(5,1),(5,2),(5,4)}
<br>
<input type=radio Value=""  name=z10>{(3,2),(3,3),(4,2),(4,3),(5,2),(5,3)}
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>
<%
elseif sSubject="AI" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.t,frm.t1,frm.aa,frm.aaa,frm.zz,frm.ccc,frm.vv,frm.bv,frm.cx,frm.xxx)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Artificial Intelligence</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;When LISP language was invented?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=t>1945
<br>
<input type=radio Value=""  name=t>1990
<br>
<input type=radio Value="3"  name=t>1950
<br>
<input type=radio Value=""  name=t>1940
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Who invented LISP language ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=t1>D.Christopher
<br>
<input type=radio Value="2"  name=t1>John Mccarthy
<br>
<input type=radio Value=""  name=t1>Dan W.Patterson
<br>
<input type=radio Value=""  name=t1>E.C.Charmaik
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of AI?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=aa>Acquired Intelligence
<br>
<input type=radio Value="2"  name=aa>Artificial Intelligence
<br>
<input type=radio Value=""  name=aa>Accounts Information
<br>
<input type=radio Value=""  name=aa>Air India
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Who invented PROLOG ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=aaa>Alain Colmerauer
<br>
<input type=radio Value=""  name=aaa>John McCarthy
<br>
<input type=radio Value=""  name=aaa>Elein Rich 
<br>
<input type=radio Value=""  name=aaa>Knight
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of IPL ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=zz>Information Processing Language
<br>
<input type=radio Value=""  name=zz>Line Processing Language
<br>
<input type=radio Value=""  name=zz>Internet Protocol Language
<br>
<input type=radio Value=""  name=zz>Information Protocol language
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which year, J.A.Robinson introduced resolution as an inference method  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=ccc>1945
<br>
<input type=radio Value=""  name=ccc>1990
<br>
<input type=radio Value="3"  name=ccc>1965
<br>
<input type=radio Value=""  name=ccc>1968
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;AI also has much in common with  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=vv>Medical
<br>
<input type=radio Value="2"  name=vv>Engineering
<br>
<input type=radio Value=""  name=vv>Chemistry
<br>
<input type=radio Value=""  name=vv>biology
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Edward Feigenbanum summaried about knowledge based System in year  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=bv>1956
<br>
<input type=radio Value=""  name=bv>1965
<br>
<input type=radio Value="3"  name=bv>1977
<br>
<input type=radio Value=""  name=bv>1970
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;In function call (car '(a b c)), which value returned ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=cx>c
<br>
<input type=radio Value="2"  name=cx>a
<br>
<input type=radio Value=""  name=cx>b
<br>
<input type=radio Value=""  name=cx>b c
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;(append '(a)'(b c)), its returns  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=xxx>(a b c)
<br>
<input type=radio Value=""  name=xxx>(a c)
<br>
<input type=radio Value=""  name=xxx>(c b)
<br>
<input type=radio Value=""  name=xxx>(a b)
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>
<%
elseif sSubject="IIT" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.tt,frm.tt2,frm.tt3,frm.tt4,frm.tt5,frm.tt6,frm.tt7,frm.tt8,frm.tt9,frm.tt10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Internet & Information Technology</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is internet?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=tt>Message can be send throughout the world all the time.
<br>
<input type=radio Value=""  name=tt>Message can be send only specified area for a particular amount of time.
<br>
<input type=radio Value=""  name=tt>Message can be send only particular area all the time.
<br>
<input type=radio Value=""  name=tt>Message can be send throughout the world for a specified time.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is full form of HTTP?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=tt2>Hyper Text Transfortation Protocol
<br>
<input type=radio Value="2"  name=tt2>Hyper Text Transfer Protocol
<br>
<input type=radio Value=""  name=tt2>Hyper Text Transmit Protocol
<br>
<input type=radio Value=""  name=tt2>Hyper Text tour Protocol
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of IIS ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=tt3>Internet Information Service
<br>
<input type=radio Value=""  name=tt3>Intranet Information Service
<br>
<input type=radio Value=""  name=tt3>Indian Institute of Service
<br>
<input type=radio Value=""  name=tt3>Internet Institute of society
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of WAIS ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=tt4>World Artificial Intelligence System
<br>
<input type=radio Value=""  name=tt4>World Association in Society
<br>
<input type=radio Value=""  name=tt4>Wide Area Internet System
<br>
<input type=radio Value="4"  name=tt4>Wide Area Information System
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of SGML ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=tt5>Standard General Mark-up language
<br>
<input type=radio Value="2"  name=tt5>Standard Generalised Mark-up language
<br>
<input type=radio Value=""  name=tt5>System General Mark-up language
<br>
<input type=radio Value=""  name=tt5>System Generalised Mark-up language
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of HTML ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=tt6>Hyper Text Mark-up Language
<br>
<input type=radio Value=""  name=tt6>Hyper Test Mark-up Language
<br>
<input type=radio Value=""  name=tt6>High Text Mark-up Language
<br>
<input type=radio Value=""  name=tt6>Hover Text Mark up Language
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of CSS ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=tt7>Cascading Style Sheet
<br>
<input type=radio Value=""  name=tt7>Common Style Sheet
<br>
<input type=radio Value=""  name=tt7>Cascadeing System Software
<br>
<input type=radio Value=""  name=tt7>Cummilative Style Sheet
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;H1 is refferred for what?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=tt8>Paragraph writing
<br>
<input type=radio Value=""  name=tt8>Hyper link
<br>
<input type=radio Value="3"  name=tt8>Heading 
<br>
<input type=radio Value=""  name=tt8>Font style
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Marquee Tag is refferred for what?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=tt9>Moving the text or image left or right 
<br>
<input type=radio Value=""  name=tt9>Color the fonts
<br>
<input type=radio Value=""  name=tt9>Change their Style
<br>
<input type=radio Value=""  name=tt9>Make a preformat document
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;HREF is refferred for what?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=tt10>It is linking the pages to the other pages.
<br>
<input type=radio Value=""  name=tt10>It is show the values of the other pages.
<br>
<input type=radio Value=""  name=tt10>It is print the gif images.
<br>
<input type=radio Value=""  name=tt10>It is show the JPEG files.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center">
<input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'">
</div>
<form>
<%
elseif sSubject="CN2" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.t,frm.t2,frm.t3,frm.t4,frm.t5,frm.t6,frm.t7,frm.t8,frm.t9,frm.t10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Computer Network-II</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of TCP/IP ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=t>Transfer Common Protocol / Intranet Protocol
<br>
<input type=radio Value="2"  name=t>Transmission Control Protocol / Internet Protocol
<br>
<input type=radio Value=""  name=t>Text Control Protocol / Internet Protocol
<br>
<input type=radio Value=""  name=t>Tele Common Protocol / Intranet Protocol
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of MIME ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=t2>Multiple Internet mail Extention
<br>
<input type=radio Value="2"  name=t2>Multipurpose Internet mail Extention
<br>
<input type=radio Value=""  name=t2>Multimedia Internet mail Extention
<br>
<input type=radio Value=""  name=t2>Multiple Intranet mail Extention
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of SMTP ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=t3>Significant mail transmission protocol
<br>
<input type=radio Value="2"  name=t3>Simple mail transmission protocol
<br>
<input type=radio Value=""  name=t3>Short mail transmission protocol
<br>
<input type=radio Value=""  name=t3>Simple mail transfer protocol
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of DHCP ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=t4>Dynamic host configaration protocol
<br>
<input type=radio Value=""  name=t4>Dynamic horizantal configaration protocol
<br>
<input type=radio Value=""  name=t4>Dynamic host confirm protocol
<br>
<input type=radio Value=""  name=t4>Domain host confirm protocol
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of FQDN ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=t5>Fixed Qualified Domain Name
<br>
<input type=radio Value=""  name=t5>Fixed Quantity Domain Name
<br>
<input type=radio Value=""  name=t5>Fully Quantity Domain Name
<br>
<input type=radio Value="4"  name=t5>Fully Qualified Domain Name
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of SMTP ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=t6>Significant mail transmission protocol
<br>
<input type=radio Value="2"  name=t6>Simple mail transmission protocol
<br>
<input type=radio Value=""  name=t6>Short mail transmission protocol
<br>
<input type=radio Value=""  name=t6>Simple mail transfer protocol
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of MIME ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=t7>Multiple Internet mail Extention
<br>
<input type=radio Value="2"  name=t7>Multipurpose Internet mail Extention
<br>
<input type=radio Value=""  name=t7>Multimedia Internet mail Extention
<br>
<input type=radio Value=""  name=t7>Multiple Intranet mail Extention
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of MIME ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=t8>Multiple Internet mail Extention
<br>
<input type=radio Value="2"  name=t8>Multipurpose Internet mail Extention
<br>
<input type=radio Value=""  name=t8>Multimedia Internet mail Extention
<br>
<input type=radio Value=""  name=t8>Multiple Intranet mail Extention
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of SMTP ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=t9>Significant mail transmission protocol
<br>
<input type=radio Value="2"  name=t9>Simple mail transmission protocol
<br>
<input type=radio Value=""  name=t9>Short mail transmission protocol
<br>
<input type=radio Value=""  name=t9>Simple mail transfer protocol
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of DHCP ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=t10>Dynamic host configaration protocol
<br>
<input type=radio Value=""  name=t10>Dynamic horizantal configaration protocol
<br>
<input type=radio Value=""  name=t10>Dynamic host confirm protocol
<br>
<input type=radio Value=""  name=t10>Domain host confirm protocol
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center">
<input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'">
</div>
</form>
<%
elseif sSubject="MP" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}

var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}


</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.x,frm.x2,frm.x3,frm.x4,frm.x5,frm.x6,frm.x7,frm.x8,frm.x9,frm.x10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Microprocessor & Computer Organization</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of CPU ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=x>Computer Processing Unit
<br>
<input type=radio Value="2"  name=x>Central Processing Unit
<br>
<input type=radio Value=""  name=x>Common Path Unit
<br>
<input type=radio Value=""  name=x>Cummilative Processing Unit
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is Mnemonics ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=x2>The binary instructions are given abbreviated names called mnemonics.
<br>
<input type=radio Value=""  name=x2>The alphabetic instructions are given abbreviated names called mnemonics.
<br>
<input type=radio Value=""  name=x2>The numerical instructions are given abbreviated names called mnemonics.
<br>
<input type=radio Value=""  name=x2>The alpha-numeric instructions are given abbreviated names called mnemonics.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the nibble ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=x3>The group of 2-bits is called nibble.
<br>
<input type=radio Value=""  name=x3>The group of 3-bits is called nibble.
<br>
<input type=radio Value=""  name=x3>The group of 8-bits is called nibble.
<br>
<input type=radio Value="4"  name=x3>The group of 4-bits is called nibble.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;FORTRAN is a what ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=x4>A high level language.
<br>
<input type=radio Value=""  name=x4>A middle level language.
<br>
<input type=radio Value=""  name=x4>A low level language.
<br>
<input type=radio Value=""  name=x4>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is a Compiler ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=x5>It is a program which converts our machine level language into high level language.
<br>
<input type=radio Value=""  name=x5>It is a program which converts our high level language into low level language.
<br>
<input type=radio Value="3"  name=x5>It is a program which converts our high level language into machine level language.
<br>
<input type=radio Value=""  name=x5>It is a program which converts our low level language into high level language.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of CPU ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=x6>Computer Processing Unit
<br>
<input type=radio Value="2"  name=x6>Central Processing Unit
<br>
<input type=radio Value=""  name=x6>Common Path Unit
<br>
<input type=radio Value=""  name=x6>Cummilative Processing Unit
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is Mnemonics ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=x7>The binary instructions are given abbreviated names called mnemonics.
<br>
<input type=radio Value=""  name=x7>The alphabetic instructions are given abbreviated names called mnemonics.
<br>
<input type=radio Value=""  name=x7>The numerical instructions are given abbreviated names called mnemonics.
<br>
<input type=radio Value=""  name=x7>The alpha-numeric instructions are given abbreviated names called mnemonics.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the nibble ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=x8>The group of 2-bits is called nibble.
<br>
<input type=radio Value=""  name=x8>The group of 3-bits is called nibble.
<br>
<input type=radio Value=""  name=x8>The group of 8-bits is called nibble.
<br>
<input type=radio Value="4"  name=x8>The group of 4-bits is called nibble.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;FORTRAN is a what ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=x9>A high level language.
<br>
<input type=radio Value=""  name=x9>A middle level language.
<br>
<input type=radio Value=""  name=x9>A low level language.
<br>
<input type=radio Value=""  name=x9>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is a Compiler ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=x10>It is a program which converts our machine level language into high level language.
<br>
<input type=radio Value=""  name=x10>It is a program which converts our high level language into low level language.
<br>
<input type=radio Value="3"  name=x10>It is a program which converts our high level language into machine level language.
<br>
<input type=radio Value=""  name=x10>It is a program which converts our low level language into high level language.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>
<%
elseif sSubject="STAT" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}

//------------------------------------ to be copied --------------------------
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

//------------------------------ eof copy------------------------------
</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.y,frm.y2,frm.y3,frm.y4,frm.y5,frm.y6,frm.y7,frm.y8,frm.y9,frm.y10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Probability & Statistics</b></div>
<!--copy this-->
	<div align="right" id="eTime" style="font-size:13"></div>
<!--copy end-->
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What do you mean by 'raw data' ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=y>The data does not give any useful information. It is rather confusing to mind. 
<br>
<input type=radio Value=""  name=y>The data does give any useful information. It is rather confusing to mind.
<br>
<input type=radio Value=""  name=y>The data does not give any useless information. It is rather confusing to mind.
<br>
<input type=radio Value=""  name=y>The data does give any useful information and it is rather easy to understand.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What do you mean by 'Continuous frequency distribution' ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=y2>A frequency distribution in which class intervals are not considered.
<br>
<input type=radio Value=""  name=y2>A frequency distribution in which class intervals are not useful.
<br>
<input type=radio Value="3"  name=y2>A frequency distribution in which class intervals are considered.
<br>
<input type=radio Value=""  name=y2>A frequency distribution in which class intervals are not allowed.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Find the Arithmatic mean of 10 nos. 18,15,18,16,17,18,15,19,17,17 ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=y3>22
<br>
<input type=radio Value=""  name=y3>11
<br>
<input type=radio Value="3"  name=y3>17
<br>
<input type=radio Value=""  name=y3>10
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;When an ordinary six faced die is thrown find the probability of getting 4 ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=y4>1/2
<br>
<input type=radio Value=""  name=y4>1/3
<br>
<input type=radio Value=""  name=y4>1/5
<br>
<input type=radio Value="4"  name=y4>1/6
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is chance that a (1)leap year and (2) non leap year has 53 Sundays ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=y5>(3/7,2/7)
<br>
<input type=radio Value="2"  name=y5>(3/7,1/7)
<br>
<input type=radio Value=""  name=y5>(1/7,2/7)
<br>
<input type=radio Value=""  name=y5>(1/7,2/7)
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What do you mean by 'raw data' ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=y6>The data does not give any useful information. It is rather confusing to mind. 
<br>
<input type=radio Value=""  name=y6>The data does give any useful information. It is rather confusing to mind.
<br>
<input type=radio Value=""  name=y6>The data does not give any useless information. It is rather confusing to mind.
<br>
<input type=radio Value=""  name=y6>The data does give any useful information and it is rather easy to understand.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What do you mean by 'Continuous frequency distribution' ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=y7>A frequency distribution in which class intervals are not considered.
<br>
<input type=radio Value=""  name=y7>A frequency distribution in which class intervals are not useful.
<br>
<input type=radio Value="3"  name=y7>A frequency distribution in which class intervals are considered.
<br>
<input type=radio Value=""  name=y7>A frequency distribution in which class intervals are not allowed.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Find the Arithmatic mean of 10 nos. 18,15,18,16,17,18,15,19,17,17 ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=y8>22
<br>
<input type=radio Value=""  name=y8>11
<br>
<input type=radio Value="3"  name=y8>17
<br>
<input type=radio Value=""  name=y8>10
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;When an ordinary six faced die is thrown find the probability of getting 4 ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=y9>1/2
<br>
<input type=radio Value=""  name=y9>1/3
<br>
<input type=radio Value=""  name=y9>1/5
<br>
<input type=radio Value="4"  name=y9>1/6
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is chance that a (1)leap year and (2) non leap year has 53 Sundays ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=y10>(3/7,2/7)
<br>
<input type=radio Value="2"  name=y10>(3/7,1/7)
<br>
<input type=radio Value=""  name=y10>(1/7,2/7)
<br>
<input type=radio Value=""  name=y10>(1/7,2/7)
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>
<%
elseif sSubject="DM" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.e,frm.e2,frm.e3,frm.e4,frm.e5,frm.e6,frm.e7,frm.e8,frm.e9,frm.e10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Discrete Mathematical Structure with Applications to computer science</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;'and' is denoted by ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=e>^
<br>
<input type=radio Value=""  name=e>v
<br>
<input type=radio Value=""  name=e>>
<br>
<input type=radio Value=""  name=e><
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;'If then' is denoted by ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=e2><->
<br>
<input type=radio Value=""  name=e2><=>
<br>
<input type=radio Value="3"  name=e2>->
<br>
<input type=radio Value=""  name=e2><-
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is a spanning tree ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=e3>A tree, which is a spanning original graph of a graph G is called spanning tree.
<br>
<input type=radio Value="2"  name=e3>A tree, which is a spanning subgraph of a graph G is called Spanning tree.
<br>
<input type=radio Value=""  name=e3>A tree, which is a spanning graph of a subgraph G is called Spanning tree.
<br>
<input type=radio Value=""  name=e3>A tree, which is a spanning subgraph of a subgraph G is called Spanning tree.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is a self loop ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=e4>The defination of graph permits an edge e of the form e=(x,y).Such an edge e is called self loop.
<br>
<input type=radio Value="2"  name=e4>The defination of graph permits an edge e of the form e=(x,x).Such an edge e is called self loop.
<br>
<input type=radio Value=""  name=e4>The defination of graph permits an edge e of the form e=(y,y).Such an edge e is called self loop.
<br>
<input type=radio Value=""  name=e4>The defination of graph permits an edge e of the form e=(y,x).Such an edge e is called self loop.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is pseudograph ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=e5>The graph having loops and also  multiple edges is called pseudograph.
<br>
<input type=radio Value="2"  name=e5>The graph having loops but no multiple edges is called psedograph.
<br>
<input type=radio Value=""  name=e5>The graph having no loops and also  multiple edges is called pseudograph.
<br>
<input type=radio Value=""  name=e5>The graph having one loops and also  multiple edges is called pseudograph.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;'and' is denoted by ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=e6>^
<br>
<input type=radio Value=""  name=e6>v
<br>
<input type=radio Value=""  name=e6>>
<br>
<input type=radio Value=""  name=e6><
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;'If then' is denoted by ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=e7><->
<br>
<input type=radio Value=""  name=e7><=>
<br>
<input type=radio Value="3"  name=e7>->
<br>
<input type=radio Value=""  name=e7><-
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is a spanning tree ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=e8>A tree, which is a spanning original graph of a graph G is called spanning tree.
<br>
<input type=radio Value="2"  name=e8>A tree, which is a spanning subgraph of a graph G is called Spanning tree.
<br>
<input type=radio Value=""  name=e8>A tree, which is a spanning graph of a subgraph G is called Spanning tree.
<br>
<input type=radio Value=""  name=e8>A tree, which is a spanning subgraph of a subgraph G is called Spanning tree.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is a self loop ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=e9>The defination of graph permits an edge e of the form e=(x,y).Such an edge e is called self loop.
<br>
<input type=radio Value="2"  name=e9>The defination of graph permits an edge e of the form e=(x,x).Such an edge e is called self loop.
<br>
<input type=radio Value=""  name=e9>The defination of graph permits an edge e of the form e=(y,y).Such an edge e is called self loop.
<br>
<input type=radio Value=""  name=e9>The defination of graph permits an edge e of the form e=(y,x).Such an edge e is called self loop.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is pseudograph ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=e10>The graph having loops and also  multiple edges is called pseudograph.
<br>
<input type=radio Value="2"  name=e10>The graph having loops but no multiple edges is called psedograph.
<br>
<input type=radio Value=""  name=e10>The graph having no loops and also  multiple edges is called pseudograph.
<br>
<input type=radio Value=""  name=e10>The graph having one loops and also  multiple edges is called pseudograph.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>
<%
elseif sSubject="DC" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.f,frm.f2,frm.f3,frm.f4,frm.f5,frm.f6,frm.f7,frm.f8,frm.f9,frm.f10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Data Structures using C</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Give the full form of LIFO ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=f>Low index in high index first out.
<br>
<input type=radio Value=""  name=f>Lower index flow out
<br>
<input type=radio Value="3"  name=f>Last in first out.
<br>
<input type=radio Value=""  name=f>Last index for outer.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What Stack States ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=f2>LIFO
<br>
<input type=radio Value=""  name=f2>FIFO
<br>
<input type=radio Value=""  name=f2>LILO
<br>
<input type=radio Value=""  name=f2>FILO
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Give a short description of isalnum()  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=f3>Test whether a character is an alphabet or a number
<br>
<input type=radio Value=""  name=f3>Character classification macro that returns non-zero if c is a letter(A-z or a-z)
<br>
<input type=radio Value=""  name=f3>Tests whether a character is an ascii(0 to 127) character.
<br>
<input type=radio Value=""  name=f3>Character classification macro that returns non-zero value if c is a digit('0'-'9')
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Pointer is used in what ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=f4>C
<br>
<input type=radio Value=""  name=f4>UNIX
<br>
<input type=radio Value=""  name=f4>COBOL
<br>
<input type=radio Value=""  name=f4>FORTRAN
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;The opposite of Constructor {} is   &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=f5>Friend function
<br>
<input type=radio Value=""  name=f5>Pointer
<br>
<input type=radio Value=""  name=f5>Union
<br>
<input type=radio Value="4"  name=f5>Destructor ~{}
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Give the full form of LIFO ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=f6>Low index in high index first out.
<br>
<input type=radio Value=""  name=f6>Lower index flow out
<br>
<input type=radio Value="3"  name=f6>Last in first out.
<br>
<input type=radio Value=""  name=f6>Last index for outer.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What Stack States ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=f7>LIFO
<br>
<input type=radio Value=""  name=f7>FIFO
<br>
<input type=radio Value=""  name=f7>LILO
<br>
<input type=radio Value=""  name=f7>FILO
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Give a short description of isalnum()  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=f8>Test whether a character is an alphabet or a number
<br>
<input type=radio Value=""  name=f8>Character classification macro that returns non-zero if c is a letter(A-z or a-z)
<br>
<input type=radio Value=""  name=f8>Tests whether a character is an ascii(0 to 127) character.
<br>
<input type=radio Value=""  name=f8>Character classification macro that returns non-zero value if c is a digit('0'-'9')
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Pointer is used in what ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=f9>C
<br>
<input type=radio Value=""  name=f9>UNIX
<br>
<input type=radio Value=""  name=f9>COBOL
<br>
<input type=radio Value=""  name=f9>FORTRAN
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;The opposite of Constructor {} is   &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=f10>Friend function
<br>
<input type=radio Value=""  name=f10>Pointer
<br>
<input type=radio Value=""  name=f10>Union
<br>
<input type=radio Value="4"  name=f10>Destructor ~{}
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>





<%
elseif sSubject="ACC" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.u,frm.u2,frm.u3,frm.u4,frm.u5,frm.u6,frm.u7,frm.u8,frm.u9,frm.u10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Accounting & Financial Management</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is Journal ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=u>The monthly business transactions are recorded in a book, called Journal.
<br>
<input type=radio Value="2"  name=u>The daily business transactions are recorded in a book, called Journal.
<br>
<input type=radio Value=""  name=u>The yearly business transactions are recorded in a book, called Journal.
<br>
<input type=radio Value=""  name=u>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is purpose of purchase book ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=u2>This book is used to record credit purchase of goods only.
<br>
<input type=radio Value=""  name=u2>This book is used to record debit purchase of goods only.
<br>
<input type=radio Value=""  name=u2>This book is used to record credit and debit purchase of goods only.
<br>
<input type=radio Value=""  name=u2>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is Cash book ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=u3>Cash book is a special journal in which all credit transactions are recorded directly.
<br>
<input type=radio Value=""  name=u3>Cash book is a special journal in which all debit transactions are recorded directly.
<br>
<input type=radio Value="3"  name=u3>Cash book is a special journal in which all cash transactions are recorded directly.
<br>
<input type=radio Value=""  name=u3>Cash book is a special journal in which all credit and debit transactions are recorded directly.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is a balance sheet ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=u4>Balance sheet is just a statement of assets and liabilities.
<br>
<input type=radio Value=""  name=u4>Balance sheet is just a statement of capital.
<br>
<input type=radio Value=""  name=u4>Balance sheet is just a statement of liabilities.
<br>
<input type=radio Value=""  name=u4>Balance sheet is just a statement of only assets.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Formula to calculate break-even point is:  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=u5>BEP=Fixed cost x Sales / Sales - Variable cost.
<br>
<input type=radio Value=""  name=u5>BEP=Fixed cost x Profit / Sales - Variable cost.
<br>
<input type=radio Value=""  name=u5>BEP=Fixed cost x purchase / Sales - Variable cost.
<br>
<input type=radio Value=""  name=u5>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is Journal ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=u6>The monthly business transactions are recorded in a book, called Journal.
<br>
<input type=radio Value="2"  name=u6>The daily business transactions are recorded in a book, called Journal.
<br>
<input type=radio Value=""  name=u6>The yearly business transactions are recorded in a book, called Journal.
<br>
<input type=radio Value=""  name=u6>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is purpose of purchase book ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=u7>This book is used to record credit purchase of goods only.
<br>
<input type=radio Value=""  name=u7>This book is used to record debit purchase of goods only.
<br>
<input type=radio Value=""  name=u7>This book is used to record credit and debit purchase of goods only.
<br>
<input type=radio Value=""  name=u7>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is Cash book ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=u8>Cash book is a special journal in which all credit transactions are recorded directly.
<br>
<input type=radio Value=""  name=u8>Cash book is a special journal in which all debit transactions are recorded directly.
<br>
<input type=radio Value="3"  name=u8>Cash book is a special journal in which all cash transactions are recorded directly.
<br>
<input type=radio Value=""  name=u8>Cash book is a special journal in which all credit and debit transactions are recorded directly.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is a balance sheet ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=u9>Balance sheet is just a statement of assets and liabilities.
<br>
<input type=radio Value=""  name=u9>Balance sheet is just a statement of capital.
<br>
<input type=radio Value=""  name=u9>Balance sheet is just a statement of liabilities.
<br>
<input type=radio Value=""  name=u9>Balance sheet is just a statement of only assets.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Formula to calculate break-even point is:  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=u10>BEP=Fixed cost x Sales / Sales - Variable cost.
<br>
<input type=radio Value=""  name=u10>BEP=Fixed cost x Profit / Sales - Variable cost.
<br>
<input type=radio Value=""  name=u10>BEP=Fixed cost x purchase / Sales - Variable cost.
<br>
<input type=radio Value=""  name=u10>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>




<%
elseif sSubject="UNIX" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.g,frm.g2,frm.g3,frm.g4,frm.g5,frm.g6,frm.g7,frm.g8,frm.g9,frm.g10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Unix Operating System</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Give the meaning of portability ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=g>The code can be saved from virus.
<br>
<input type=radio Value="2"  name=g>The code can be changed and compiled on a new machine.
<br>
<input type=radio Value=""  name=g>The code can be modify and compiled on a new machine.
<br>
<input type=radio Value=""  name=g>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is boot block ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=g2>It is a last block in the system file.
<br>
<input type=radio Value=""  name=g2>It is a middle block in the system file.
<br>
<input type=radio Value="3"  name=g2>It is a very first block in the system file.
<br>
<input type=radio Value=""  name=g2>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the function of command cp ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=g3>It copies the content of one file to another file.
<br>
<input type=radio Value=""  name=g3>It copies the content of one file to another file and deletes the contents of first file.
<br>
<input type=radio Value=""  name=g3>It send the content of one file to another file.
<br>
<input type=radio Value=""  name=g3>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What does the tail filter ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=g4>It displays the last lines from the end of file by default.
<br>
<input type=radio Value="2"  name=g4>It displays 10 lines from the end of file by default.
<br>
<input type=radio Value=""  name=g4>It displays 2 lines from the end of file by default.
<br>
<input type=radio Value=""  name=g4>It displays 20 lines from the end of file by default.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Bourne Shell command prompt is denoted by:  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=g5>"%"
<br>
<input type=radio Value=""  name=g5>"$"
<br>
<input type=radio Value=""  name=g5>"&"
<br>
<input type=radio Value=""  name=g5>"^"
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Give the meaning of portability ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=g6>The code can be saved from virus.
<br>
<input type=radio Value="2"  name=g6>The code can be changed and compiled on a new machine.
<br>
<input type=radio Value=""  name=g6>The code can be modify and compiled on a new machine.
<br>
<input type=radio Value=""  name=g6>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is boot block ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=g7>It is a last block in the system file.
<br>
<input type=radio Value=""  name=g7>It is a middle block in the system file.
<br>
<input type=radio Value="3"  name=g7>It is a very first block in the system file.
<br>
<input type=radio Value=""  name=g7>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the function of command cp ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=g8>It copies the content of one file to another file.
<br>
<input type=radio Value=""  name=g8>It copies the content of one file to another file and deletes the contents of first file.
<br>
<input type=radio Value=""  name=g8>It send the content of one file to another file.
<br>
<input type=radio Value=""  name=g8>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What does the tail filter ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=g9>It displays the last lines from the end of file by default.
<br>
<input type=radio Value="2"  name=g9>It displays 10 lines from the end of file by default.
<br>
<input type=radio Value=""  name=g9>It displays 2 lines from the end of file by default.
<br>
<input type=radio Value=""  name=g9>It displays 20 lines from the end of file by default.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Bourne Shell command prompt is denoted by:  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=g10>"%"
<br>
<input type=radio Value=""  name=g10>"$"
<br>
<input type=radio Value=""  name=g10>"&"
<br>
<input type=radio Value=""  name=g10>"^"
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>
<%
elseif sSubject="CG" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.b,frm.b2,frm.b3,frm.b4,frm.b5,frm.b6,frm.b7,frm.b8,frm.b9,frm.b10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Computer Graphics</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Give the full form of DDA ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=b>Digital Different Analyzer.
<br>
<input type=radio Value=""  name=b>Domain Differential Analyzer.
<br>
<input type=radio Value="3"  name=b>Digital Differential Analyzer.
<br>
<input type=radio Value=""  name=b>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is Octrees ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=b2>Octrees are hierarchical tree structure.
<br>
<input type=radio Value=""  name=b2>Octrees are horizontal tree structure.
<br>
<input type=radio Value=""  name=b2>Octrees are vertical tree structure.
<br>
<input type=radio Value=""  name=b2>Octrees are diagonal tree structure.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is track ball ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=b3>Track ball is a ball that can be rotated with the leg.
<br>
<input type=radio Value=""  name=b3>Track ball is a ball that can be rotated with the nose.
<br>
<input type=radio Value="3"  name=b3>Track ball is a ball that can be rotated with the finger or palm of the hand.
<br>
<input type=radio Value=""  name=b3>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is Joy stick ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=b4>A joystick contains a small vertical level mounted on a have that is used to move the cursor movement.
<br>
<input type=radio Value=""  name=b4>A joystick contains a large vertical level mounted on a have that is used to move the cursor movement.
<br>
<input type=radio Value=""  name=b4>A joystick contains a small horizontal level mounted on a have that is used to move the cursor movement.
<br>
<input type=radio Value=""  name=b4>A joystick contains a large horizontal level mounted on a have that is used to move the cursor movement.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is tablet ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=b5>The term tablet is used to describe a smooth surface.
<br>
<input type=radio Value=""  name=b5>The term tablet is used to describe a rought surface.
<br>
<input type=radio Value=""  name=b5>The term tablet is used to describe a simple surface.
<br>
<input type=radio Value="4"  name=b5>The term tablet is used to describe a flat surface.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Give the full form of DDA ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=b6>Digital Different Analyzer.
<br>
<input type=radio Value=""  name=b6>Domain Differential Analyzer.
<br>
<input type=radio Value="3"  name=b6>Digital Differential Analyzer.
<br>
<input type=radio Value=""  name=b6>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is Octrees ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=b7>Octrees are hierarchical tree structure.
<br>
<input type=radio Value=""  name=b7>Octrees are horizontal tree structure.
<br>
<input type=radio Value=""  name=b7>Octrees are vertical tree structure.
<br>
<input type=radio Value=""  name=b7>Octrees are diagonal tree structure.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is track ball ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=b8>Track ball is a ball that can be rotated with the leg.
<br>
<input type=radio Value=""  name=b8>Track ball is a ball that can be rotated with the nose.
<br>
<input type=radio Value="3"  name=b8>Track ball is a ball that can be rotated with the finger or palm of the hand.
<br>
<input type=radio Value=""  name=b8>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is Joy stick ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=b9>A joystick contains a small vertical level mounted on a have that is used to move the cursor movement.
<br>
<input type=radio Value=""  name=b9>A joystick contains a large vertical level mounted on a have that is used to move the cursor movement.
<br>
<input type=radio Value=""  name=b9>A joystick contains a small horizontal level mounted on a have that is used to move the cursor movement.
<br>
<input type=radio Value=""  name=b9>A joystick contains a large horizontal level mounted on a have that is used to move the cursor movement.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is tablet ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=b10>The term tablet is used to describe a smooth surface.
<br>
<input type=radio Value=""  name=b10>The term tablet is used to describe a rought surface.
<br>
<input type=radio Value=""  name=b10>The term tablet is used to describe a simple surface.
<br>
<input type=radio Value="4"  name=b10>The term tablet is used to describe a flat surface.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>

<%

elseif sSubject="BC" then 
%>
<!--insert Technical English & Report Writing questions-->
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.w,frm.w2,frm.w3,frm.w4,frm.w5,frm.w6,frm.w7,frm.w8,frm.w9,frm.w10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Business Communication & Personality Development</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which one is not a present tense &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=w>was
<br>
<input type=radio Value=""  name=w>is
<br>
<input type=radio Value=""  name=w>have
<br>
<input type=radio Value=""  name=w>are
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which is Present continuous tense &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=w2>I am going to the college
<br>
<input type=radio Value=""  name=w2>I was gone to the college
<br>
<input type=radio Value=""  name=w2>I will go to the college
<br>
<input type=radio Value=""  name=w2>I have to go to the college
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;"The pasent had died before the doctor came", which tense? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=w3>Present continuous
<br>
<input type=radio Value="2"  name=w3>Past perfect
<br>
<input type=radio Value=""  name=w3>Future
<br>
<input type=radio Value=""  name=w3>Past continuous
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Who got Gitanjali award? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=w4>John Smith
<br>
<input type=radio Value=""  name=w4>Rogger
<br>
<input type=radio Value=""  name=w4>Dannis Rithie
<br>
<input type=radio Value="4"  name=w4>Rabindranath Tagore
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;The story "Packing" who was written? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=w5>Jerome K.Jerome
<br>
<input type=radio Value=""  name=w5>Willium 
<br>
<input type=radio Value=""  name=w5>Dan W.Patterson
<br>
<input type=radio Value=""  name=w5>Sarat chandra chttopadyay
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;In an application, where the address was written? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=w6>Top left
<br>
<input type=radio Value=""  name=w6>Top right
<br>
<input type=radio Value=""  name=w6>Bottom left
<br>
<input type=radio Value=""  name=w6>Bottom right
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Who wrote "The Listener" poetry? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=w7>Rogger 
<br>
<input type=radio Value=""  name=w7>Robinson 
<br>
<input type=radio Value="3"  name=w7>Walter Delamer
<br>
<input type=radio Value=""  name=w7>Rabindranath Tagore
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;How many types of tenses has grammer? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=w8>Two
<br>
<input type=radio Value=""  name=w8>One
<br>
<input type=radio Value="3"  name=w8>Three
<br>
<input type=radio Value=""  name=w8>Four
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Rogger goes to his farm. Here Rogger is a &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=w9>Adjective
<br>
<input type=radio Value=""  name=w9>Pronoun
<br>
<input type=radio Value=""  name=w9>Conjunction
<br>
<input type=radio Value="4"  name=w9>Noun
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Who wrote "Art of letter writing" ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=w10>Jhon Smith
<br>
<input type=radio Value=""  name=w10>Willium
<br>
<input type=radio Value="3"  name=w10>Jacob
<br>
<input type=radio Value=""  name=w10>Mayor
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>

<%
elseif sSubject="SE" then 
%>
<!--insert Technical English & Report Writing questions-->
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.h,frm.h2,frm.h3,frm.h4,frm.h5,frm.h6,frm.h7,frm.h8,frm.h9,frm.h10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Software Engineering</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Define Software Engineering? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=h>Software Engineering is instructions (Computer Program) that when executed provide desired function and performance.
<br>
<input type=radio Value="2"  name=h>Software Engineering is the systematic approach to the development, operation, maintenance, and retirement of software.
<br>
<input type=radio Value=""  name=h>Software Engineering is a collection of numerical methods.
<br>
<input type=radio Value=""  name=h>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which Component is not able in the SRS ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=h2>Functionality
<br>
<input type=radio Value="2"  name=h2>Internal interfaces.
<br>
<input type=radio Value=""  name=h2>Performance.
<br>
<input type=radio Value=""  name=h2>External interfaces.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of COCOMO model? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=h3>Common Cost Model
<br>
<input type=radio Value=""  name=h3>Comersial Constructive Model
<br>
<input type=radio Value=""  name=h3>Cummilative Cost Model
<br>
<input type=radio Value="4"  name=h3>Constructive Cost Model
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What types of Resource available in the Project Management? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=h4>One type (Human Resource)
<br>
<input type=radio Value=""  name=h4>Two types (Human Resource, Hardware Resource)
<br>
<input type=radio Value="3"  name=h4>Three types (Human Resource, Hardware Resource, Software Resource)
<br>
<input type=radio Value=""  name=h4>Four types (Human Resource, Hardware Resource, Software Resource, Customer Resource)
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;The classic life-cycle paradigm is sometimes called as &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=h5>Spiral model
<br>
<input type=radio Value=""  name=h5>COCOMO model
<br>
<input type=radio Value=""  name=h5>Top-down model
<br>
<input type=radio Value="4"  name=h5>Waterfall model
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Define Software Engineering? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=h6>Software Engineering is instructions (Computer Program) that when executed provide desired function and performance.
<br>
<input type=radio Value="2"  name=h6>Software Engineering is the systematic approach to the development, operation, maintenance, and retirement of software.
<br>
<input type=radio Value=""  name=h6>Software Engineering is a collection of numerical methods.
<br>
<input type=radio Value=""  name=h6>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which Component is not able in the SRS ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=h7>Functionality
<br>
<input type=radio Value="2"  name=h7>Internal interfaces.
<br>
<input type=radio Value=""  name=h7>Performance.
<br>
<input type=radio Value=""  name=h7>External interfaces.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of COCOMO model? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=h8>Common Cost Model
<br>
<input type=radio Value=""  name=h8>Comersial Constructive Model
<br>
<input type=radio Value=""  name=h8>Cummilative Cost Model
<br>
<input type=radio Value="4"  name=h8>Constructive Cost Model
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What types of Resource available in the Project Management? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=h9>One type (Human Resource)
<br>
<input type=radio Value=""  name=h9>Two types (Human Resource, Hardware Resource)
<br>
<input type=radio Value="3"  name=h9>Three types (Human Resource, Hardware Resource, Software Resource)
<br>
<input type=radio Value=""  name=h9>Four types (Human Resource, Hardware Resource, Software Resource, Customer Resource)
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;The classic life-cycle paradigm is sometimes called as &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=h10>Spiral model
<br>
<input type=radio Value=""  name=h10>COCOMO model
<br>
<input type=radio Value=""  name=h10>Top-down model
<br>
<input type=radio Value="4"  name=h10>Waterfall model
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>
<%
elseif sSubject="SS" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.i,frm.i2,frm.i3,frm.i4,frm.i5,frm.i6,frm.i7,frm.i8,frm.i9,frm.i10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>System Software</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Define System Software? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=i>System Software is a collection of programs used to assists the system to perform related works.
<br>
<input type=radio Value=""  name=i>System Software is a collection of programs used to assists the system to perform defferent works.
<br>
<input type=radio Value=""  name=i>System Software is a collection of data used to assists the system to perform related works.
<br>
<input type=radio Value=""  name=i>System Software is a collection of programs used to assists the system to developed related works.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;The language in the form 1's & 0's called  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=i2>Assembly language
<br>
<input type=radio Value=""  name=i2>Numeric language
<br>
<input type=radio Value=""  name=i2>Alphanumeric language
<br>
<input type=radio Value="4"  name=i2>Machine language
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;How many tasks has the lexical phase? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=i3>Two
<br>
<input type=radio Value="2"  name=i3>Three
<br>
<input type=radio Value=""  name=i3>Four
<br>
<input type=radio Value=""  name=i3>Five
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which one is a component of System Software? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=i4>MBR
<br>
<input type=radio Value=""  name=i4>MAR
<br>
<input type=radio Value=""  name=i4>Add
<br>
<input type=radio Value="4"  name=i4>Loaders
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;BALR are used for what ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=i5>It is used to compile the base register.
<br>
<input type=radio Value="2"  name=i5>It is used to loading the base register.
<br>
<input type=radio Value=""  name=i5>It is used to assemble the base register.
<br>
<input type=radio Value=""  name=i5>It is used to testing the base register.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Define System Software? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value="1"  name=i6>System Software is a collection of programs used to assists the system to perform related works.
<br>
<input type=radio Value=""  name=i6>System Software is a collection of programs used to assists the system to perform defferent works.
<br>
<input type=radio Value=""  name=i6>System Software is a collection of data used to assists the system to perform related works.
<br>
<input type=radio Value=""  name=i6>System Software is a collection of programs used to assists the system to developed related works.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;The language in the form 1's & 0's called  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=i7>Assembly language
<br>
<input type=radio Value=""  name=i7>Numeric language
<br>
<input type=radio Value=""  name=i7>Alphanumeric language
<br>
<input type=radio Value="4"  name=i7>Machine language
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;How many tasks has the lexical phase? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=i8>Two
<br>
<input type=radio Value="2"  name=i8>Three
<br>
<input type=radio Value=""  name=i8>Four
<br>
<input type=radio Value=""  name=i8>Five
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which one is a component of System Software? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=i9>MBR
<br>
<input type=radio Value=""  name=i9>MAR
<br>
<input type=radio Value=""  name=i9>Add
<br>
<input type=radio Value="4"  name=i9>Loaders
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;BALR are used for what ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=i10>It is used to compile the base register.
<br>
<input type=radio Value="2"  name=i10>It is used to loading the base register.
<br>
<input type=radio Value=""  name=i10>It is used to assemble the base register.
<br>
<input type=radio Value=""  name=i10>It is used to testing the base register.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>

<%
elseif sSubject="COBOL" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.d,frm.d2,frm.d3,frm.d4,frm.d5,frm.d6,frm.d7,frm.d8,frm.d9,frm.d10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Business Data Processing COBOL</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Is COBOL is platform independent ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=d>No
<br>
<input type=radio Value="2"  name=d>Yes
<br>
<input type=radio Value=""  name=d>Not exactly
<br>
<input type=radio Value=""  name=d>Some Computers it is Indepent
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which level language is COBOL ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=d2>Assembly language
<br>
<input type=radio Value=""  name=d2>Low level language
<br>
<input type=radio Value="3"  name=d2>High level language
<br>
<input type=radio Value=""  name=d2>Middle level language
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;In which position we write program in the COBOL compilar ?&nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=d3>5
<br>
<input type=radio Value=""  name=d3>6
<br>
<input type=radio Value="3"  name=d3>7
<br>
<input type=radio Value=""  name=d3>8
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which comes first? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=d4>HALT
<br>
<input type=radio Value=""  name=d4>PROCEDURAL
<br>
<input type=radio Value=""  name=d4>PROGRAM
<br>
<input type=radio Value="4"  name=d4>IDENTIFICATION
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Is COBOL a programming language? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=d5>No
<br>
<input type=radio Value="2"  name=d5>Yes
<br>
<input type=radio Value=""  name=d5>Not exactly
<br>
<input type=radio Value=""  name=d5>It is a operating system
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Is COBOL is platform independent ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=d6>No
<br>
<input type=radio Value="2"  name=d6>Yes
<br>
<input type=radio Value=""  name=d6>Not exactly
<br>
<input type=radio Value=""  name=d6>Some Computers it is Indepent
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which level language is COBOL ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=d7>Assembly language
<br>
<input type=radio Value=""  name=d7>Low level language
<br>
<input type=radio Value="3"  name=d7>High level language
<br>
<input type=radio Value=""  name=d7>Middle level language
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;In which position we write program in the COBOL compilar ?&nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=d8>5
<br>
<input type=radio Value=""  name=d8>6
<br>
<input type=radio Value="3"  name=d8>7
<br>
<input type=radio Value=""  name=d8>8
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Which comes first? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=d9>HALT
<br>
<input type=radio Value=""  name=d9>PROCEDURAL
<br>
<input type=radio Value=""  name=d9>PROGRAM
<br>
<input type=radio Value="4"  name=d9>IDENTIFICATION
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;Is COBOL a programming language? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=d10>No
<br>
<input type=radio Value="2"  name=d10>Yes
<br>
<input type=radio Value=""  name=d10>Not exactly
<br>
<input type=radio Value=""  name=d10>It is a operating system
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>

<%
elseif sSubject="SAD" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.v,frm.v2,frm.v3,frm.v4,frm.v5,frm.v6,frm.v7,frm.v8,frm.v9,frm.v10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>System Analysis & Design</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What do you mean by SDLC ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=v>Source destination life cycle
<br>
<input type=radio Value=""  name=v>System destination life cycle
<br>
<input type=radio Value="3"  name=v>System development life cycle
<br>
<input type=radio Value=""  name=v>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of DFD ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=v2>Data flow dictionary
<br>
<input type=radio Value="2"  name=v2>Data flow diagram
<br>
<input type=radio Value=""  name=v2>Data force diagram
<br>
<input type=radio Value=""  name=v2>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form od DD ?&nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=v3>Document Dictionary
<br>
<input type=radio Value=""  name=v3>Demand Draft
<br>
<input type=radio Value="3"  name=v3>Data Dictionary
<br>
<input type=radio Value=""  name=v3>None of this
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of SE ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=v4>Software Engineering
<br>
<input type=radio Value="2"  name=v4>Structured English
<br>
<input type=radio Value=""  name=v4>Source English
<br>
<input type=radio Value=""  name=v4>None of this
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;How many types of classification has cost and benefits? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=v5>One
<br>
<input type=radio Value=""  name=v5>Two
<br>
<input type=radio Value="3"  name=v5>Three
<br>
<input type=radio Value=""  name=v5>Four
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What do you mean by SDLC ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=v6>Source destination life cycle
<br>
<input type=radio Value=""  name=v6>System destination life cycle
<br>
<input type=radio Value="3"  name=v6>System development life cycle
<br>
<input type=radio Value=""  name=v6>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of DFD ?  &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=v7>Data flow dictionary
<br>
<input type=radio Value="2"  name=v7>Data flow diagram
<br>
<input type=radio Value=""  name=v7>Data force diagram
<br>
<input type=radio Value=""  name=v7>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form od DD ?&nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=v8>Document Dictionary
<br>
<input type=radio Value=""  name=v8>Demand Draft
<br>
<input type=radio Value="3"  name=v8>Data Dictionary
<br>
<input type=radio Value=""  name=v8>None of this
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the full form of SE ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=v9>Software Engineering
<br>
<input type=radio Value="2"  name=v9>Structured English
<br>
<input type=radio Value=""  name=v9>Source English
<br>
<input type=radio Value=""  name=v9>None of this
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;How many types of classification has cost and benefits? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=v10>One
<br>
<input type=radio Value=""  name=v10>Two
<br>
<input type=radio Value="3"  name=v10>Three
<br>
<input type=radio Value=""  name=v10>Four
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>
<div align="center"><input type="submit" class="" name="button" value="Submit" style="cursor:hand;border:1 black solid;background-color:white;width:150" onmouseover="this.style.color='magenta'" onmouseout="this.style.color='black'"></div>
</form>

<%
elseif sSubject="JAVA" then 
%>
<script src="score.js"></script>
<script>

var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
alert("Can't take exam again !")
location.href="Login.htm"
}
var iCnt=60
var tmr=null
function window.onload(){
	
	iCnt--
	eTime.innerHTML="Time Remaining: <b style=color:red>" + iCnt + "</b> Sec "
	if (iCnt==0){
		alert("Time Out !")
		iCnt=0
		window.clearInterval(tmr)
		document.forms[0].method="POST"
		document.forms[0].action="result.asp"
		document.forms[0].submit()
	}
	
	
    tmr=setTimeout("window.onload()",1000)
}

</script>
<form action="result.asp" method="post" name="frm" onsubmit="return chkRad(frm.vj,frm.vj2,frm.vj3,frm.vj4,frm.vj5,frm.vj6,frm.vj7,frm.vj8,frm.vj9,frm.vj10)">
<div align="center" style="FONT-FAMILY: arial;font-size:20;color:green"><b>Java Programming & Web Page Development</b></div>
<div align="right" id="eTime" style="font-size:13"></div>
<br>
<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is full form of jdk ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=vj>Java dictionary kit
<br>
<input type=radio Value=""  name=vj>Java description kit
<br>
<input type=radio Value="3"  name=vj>Java devolpment kit
<br>
<input type=radio Value=""  name=vj>None of this.
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is the function of java compiler ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=vj2>Its transalates the java source code into its bytecode
<br>
<input type=radio Value=""  name=vj2>Its transalates the java bytecode into its source code
<br>
<input type=radio Value="3"  name=vj2>Its interpreter executes the class file which is generated by compiler
<br>
<input type=radio Value=""  name=vj2>Its java debugger jdb.exe enables to bebug our java program
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>

<fieldset width="500">
<legend><b style="font-size:17;color:green">&nbsp;What is Java Virtual Machine ? &nbsp;</b>
</legend>
<div style="font-size:8">&nbsp;</div>
<div style="padding-left:12">
<input type=radio Value=""  name=vj3>Its a key addition to JDK1.1 is support for JavaBeans, a component model for java
<br>
<input type=radio Value="2"  name=vj3>Its sits,metaphorically, between the java program and the machine it is running
<br>
<input type=radio Value=""  name=vj3>It is capable od Dynamically linking in new class libraries, methods and objects
<br>
<input type=radio Value=""  name=vj3>It is used to run java applets
</div>
<div>&nbsp;</div>
</fieldset>
<br>
<br>






























<%
end if
%>
<P>&nbsp;</P>

</BODY>
</HTML>
