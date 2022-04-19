<html>
<head>
<title>
          Introduction.
</title>
<script>
	function goExamPage(){
		if(confirm("Are you sure to take up the exam now ?")){
			return true
		
		}
	
		return false
	}



</script>
<style>

.a{width:200;height:30;color:black;background-color:brown;font-size:15;font-family:arial black}

</style>
<style>
.gradiant{height:100;width:200;color:lime;filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=black,EndColorStr=red)}
body.{
	scrollbar-base-color:magenta;
	scrollbar-arrow-color:red;
	scrollbar-face-color:salmon; 
	scrollbar-darkshadow-color:red;
	
	scrollbar-shadow-color:blue;
	scrollbar-highlight-color:blue;
	scrollbar-3dlight-color:red;
	scrollbar-track-color:aqua;


	
}
    
 
</style>
</head>
<body  class="gradiant" bgproperties="fixed" background1="background.gif">
<form action="exam.asp" method="post" onsubmit="return goExamPage()">
<%
dim User,PasWrd
User=trim(request.form("userID"))
PasWrd=trim(Request.Form("password"))
sSem=trim(Request.Form("sem"))
dim con,rs,sRoot,sSql
set con=server.CreateObject("adodb.connection")
set rs=server.CreateObject("adodb.recordset")

con.Open session("con")
rs.Open "select * from Register where User_ID='"&User&"' and Password='"&PasWrd&"' and Semester='"&sSem&"'",con,1
dim bchk
bchk=false
while not rs.EOF
	bchk=true
	rs.MoveNext
wend
if not bchk then
	Response.Write "<b style=color:red>Sorry Unsucessful LogIn ! Kindly Retry with your User Id and Password !</b><br><br><br><br>"
	Response.Write "<div align=right><button style='cursor:hand' class=a onclick=""location.href='login.htm'"">Back</button></div> "
   

else

%>

<h1><center><font color="orange">Welcome to the Examination section: </font></center></h1>
<u><h2><font color="orange">Rules & Regulations.</font></h2></u>
<p align="left" title="Rules"><font color="orange">
This is a way to give a examination in front of a computer. This is a 
time consuming and also a security based way. Here is no chance to leack up any quenstion paper
throught up this site.<br>
<br>
<b><u>Rules:-</u></b>
<ul>
<li>Students should must have the registration number, otherwise they are not appear from the exam.</li>
<li>In this page students get a registration form, in where a secrect code number is wanted, when students
fill this form then they get the quentions.</li>
<li>There are forty (40) quentions are there and every quentions are visible only 120 secends. Therefore the total 
examination time is 80 minutes and 10 minutes extra, thereform total time given 90 minutes or 1.30 hours.</li>
<li>The score is distributed as this way, every question carrys 5 marks and there will be a nagetive marking. If you 
choose five (5) wrong answers then you have loose 1 marks.</li>
<li>Every students has given 120 seconds, in that time if they not choose the proper answer then the question has gone 
and the next question will come. And the previous quention, they will not get any number or reduce any number.</li>
<li>After finished all the quentions students must have to log out there computer or this site, otherwise any person can
handle this site.</li>
<li>There is a clock, which showing the time. When you received the question this clock will decriment by 120 to 0. When clock
is 0, then the quention will changed by other questions.</li>
<li>In question paper, there will a question with four (4) answers, you have to choose the right one only.</li>
<li> <u><b>Attention</b> </u> those who have already appeared for the exam can see their consolidated marks semester wise.
<br>Click Here to view your <a href="ConsolRes.asp?usrid=<%=User%>&showsem=<%=sSem%>">Semister Wise Result</a>
<br>
Click Here to view your <a href="ConsolRes.asp?usrid=<%=User%>">Semister Wise <b><u>Consolidated</u></b> Result</a>
</li>
<h2>Thank you</h2>
</ul>
<div align="right"><input type="submit" value="Take Exam Now !" class="a" style="cursor:hand" onmouseover="this.style.color='orange'" onmouseout="this.style.color='black'"/></div>
</font>
<%
	end if
	
%>
<input type="hidden" value="<%=trim(request.form("userID"))%>" name="userID">
<input type="hidden" value="<%=trim(Request.Form("sem"))%>" name="sem">
<input value="<%=trim(Request.Form("password"))%>" type="hidden" name="password">

</form>
</body>
</html>