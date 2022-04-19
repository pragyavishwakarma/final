<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">

<script>
var clval=document.cookie.split("=")
var ckvl=clval[1].split(";")
//alert(ckvl[0])
if(ckvl[0]!="start"){
	alert("Can't take exam again !")
	location.href="Login.htm"
}

var dt=new Date()

document.cookie ="test=start;expires="+dt

</script>

</HEAD>
<BODY  bgColor=Yellow>

<%
dim iScore
iScore=0
if Request.Form("r")="4" then
	iScore=iScore+10
end if

if Request.Form("ri")="1" then
	iScore=iScore+10
end if

if Request.Form("rii")="1" then
	iScore=iScore+10
end if

if Request.Form("ro")="1" then
	iScore=iScore+10
end if

if Request.Form("rp")="2" then
	iScore=iScore+10
end if

if Request.Form("pr")="1" then
	iScore=iScore+10
end if

if Request.Form("rq")="2" then
	iScore=iScore+10
end if

if Request.Form("qr")="1" then
	iScore=iScore+10
end if

if Request.Form("wr")="4" then
	iScore=iScore+10
end if

if Request.Form("cr")="1" then
	iScore=iScore+10
end if

if Request.Form("c")="1" then
	iScore=iScore+10
end if

if Request.Form("t")="1" then
	iScore=iScore+10
end if

if Request.Form("ca")="2" then
	iScore=iScore+10
end if

if Request.Form("cri")="4" then
	iScore=iScore+10
end if

if Request.Form("z")="1" then
	iScore=iScore+10
end if

if Request.Form("za")="1" then
	iScore=iScore+10
end if

if Request.Form("zb")="3" then
	iScore=iScore+10
end if

if Request.Form("zm")="3" then
	iScore=iScore+10
end if

if Request.Form("zn")="4" then
	iScore=iScore+10
end if

if Request.Form("zt")="3" then
	iScore=iScore+10
end if

if Request.Form("t")="3" then
	iScore=iScore+10
end if

if Request.Form("t1")="2" then
	iScore=iScore+10
end if

if Request.Form("aa")="2" then
	iScore=iScore+10
end if

if Request.Form("aaa")="1" then
	iScore=iScore+10
end if

if Request.Form("zz")="1" then
	iScore=iScore+10
end if

if Request.Form("ccc")="3" then
	iScore=iScore+10
end if

if Request.Form("vv")="2" then
	iScore=iScore+10
end if

if Request.Form("bv")="3" then
	iScore=iScore+10
end if

if Request.Form("cx")="2" then
	iScore=iScore+10
end if

if Request.Form("xxx")="1" then
	iScore=iScore+10
end if

if Request.Form("tt")="1" then
	iScore=iScore+10
end if

if Request.Form("tt2")="2" then
	iScore=iScore+10
end if

if Request.Form("tt3")="1" then
	iScore=iScore+10
end if

if Request.Form("tt4")="4" then
	iScore=iScore+10
end if

if Request.Form("tt5")="2" then
	iScore=iScore+10
end if

if Request.Form("tt6")="1" then
	iScore=iScore+10
end if

if Request.Form("tt7")="1" then
	iScore=iScore+10
end if

if Request.Form("tt8")="3" then
	iScore=iScore+10
end if

if Request.Form("tt9")="1" then
	iScore=iScore+10
end if

if Request.Form("tt10")="1" then
	iScore=iScore+10
end if

if Request.Form("t")="2" then
	iScore=iScore+10
end if

if Request.Form("t2")="2" then
	iScore=iScore+10
end if

if Request.Form("t3")="2" then
	iScore=iScore+10
end if

if Request.Form("t4")="1" then
	iScore=iScore+10
end if

if Request.Form("t5")="4" then
	iScore=iScore+10
end if

if Request.Form("t6")="2" then
	iScore=iScore+10
end if

if Request.Form("t7")="2" then
	iScore=iScore+10
end if

if Request.Form("t8")="2" then
	iScore=iScore+10
end if

if Request.Form("t9")="2" then
	iScore=iScore+10
end if

if Request.Form("t10")="1" then
	iScore=iScore+10
end if

if Request.Form("z")="3" then
	iScore=iScore+10
end if

if Request.Form("z2")="2" then
	iScore=iScore+10
end if

if Request.Form("z3")="1" then
	iScore=iScore+10
end if

if Request.Form("z4")="3" then
	iScore=iScore+10
end if

if Request.Form("z5")="1" then
	iScore=iScore+10
end if

if Request.Form("z6")="3" then
	iScore=iScore+10
end if

if Request.Form("z7")="2" then
	iScore=iScore+10
end if

if Request.Form("z8")="1" then
	iScore=iScore+10
end if

if Request.Form("z9")="3" then
	iScore=iScore+10
end if

if Request.Form("z10")="1" then
	iScore=iScore+10
end if

if Request.Form("x")="2" then
	iScore=iScore+10
end if

if Request.Form("x2")="1" then
	iScore=iScore+10
end if

if Request.Form("x3")="4" then
	iScore=iScore+10
end if

if Request.Form("x4")="1" then
	iScore=iScore+10
end if

if Request.Form("x5")="3" then
	iScore=iScore+10
end if

if Request.Form("x6")="2" then
	iScore=iScore+10
end if

if Request.Form("x7")="1" then
	iScore=iScore+10
end if

if Request.Form("x8")="4" then
	iScore=iScore+10
end if

if Request.Form("x9")="1" then
	iScore=iScore+10
end if

if Request.Form("x10")="3" then
	iScore=iScore+10
end if

if Request.Form("y")="1" then
	iScore=iScore+10
end if

if Request.Form("y2")="3" then
	iScore=iScore+10
end if

if Request.Form("y3")="3" then
	iScore=iScore+10
end if

if Request.Form("y4")="4" then
	iScore=iScore+10
end if

if Request.Form("y5")="2" then
	iScore=iScore+10
end if

if Request.Form("y6")="1" then
	iScore=iScore+10
end if

if Request.Form("y7")="3" then
	iScore=iScore+10
end if

if Request.Form("y8")="3" then
	iScore=iScore+10
end if

if Request.Form("y9")="4" then
	iScore=iScore+10
end if

if Request.Form("y10")="2" then
	iScore=iScore+10
end if

if Request.Form("e")="1" then
	iScore=iScore+10
end if

if Request.Form("e2")="3" then
	iScore=iScore+10
end if

if Request.Form("e3")="2" then
	iScore=iScore+10
end if

if Request.Form("e4")="2" then
	iScore=iScore+10
end if

if Request.Form("e5")="2" then
	iScore=iScore+10
end if

if Request.Form("e6")="1" then
	iScore=iScore+10
end if

if Request.Form("e7")="3" then
	iScore=iScore+10
end if

if Request.Form("e8")="2" then
	iScore=iScore+10
end if

if Request.Form("e9")="2" then
	iScore=iScore+10
end if

if Request.Form("e10")="2" then
	iScore=iScore+10
end if

if Request.Form("u")="2" then
	iScore=iScore+10
end if

if Request.Form("u2")="1" then
	iScore=iScore+10
end if

if Request.Form("u3")="3" then
	iScore=iScore+10
end if

if Request.Form("u4")="1" then
	iScore=iScore+10
end if

if Request.Form("u5")="1" then
	iScore=iScore+10
end if

if Request.Form("u6")="2" then
	iScore=iScore+10
end if

if Request.Form("u7")="1" then
	iScore=iScore+10
end if

if Request.Form("u8")="3" then
	iScore=iScore+10
end if

if Request.Form("u9")="1" then
	iScore=iScore+10
end if

if Request.Form("u10")="1" then
	iScore=iScore+10
end if

if Request.Form("g")="2" then
	iScore=iScore+10
end if

if Request.Form("g2")="3" then
	iScore=iScore+10
end if

if Request.Form("g3")="1" then
	iScore=iScore+10
end if

if Request.Form("g4")="2" then
	iScore=iScore+10
end if

if Request.Form("g5")="1" then
	iScore=iScore+10
end if

if Request.Form("g6")="2" then
	iScore=iScore+10
end if

if Request.Form("g7")="3" then
	iScore=iScore+10
end if

if Request.Form("g8")="1" then
	iScore=iScore+10
end if

if Request.Form("g9")="2" then
	iScore=iScore+10
end if

if Request.Form("g10")="1" then
	iScore=iScore+10
end if

if Request.Form("b")="3" then
	iScore=iScore+10
end if

if Request.Form("b2")="1" then
	iScore=iScore+10
end if

if Request.Form("b3")="3" then
	iScore=iScore+10
end if

if Request.Form("b4")="1" then
	iScore=iScore+10
end if

if Request.Form("b5")="4" then
	iScore=iScore+10
end if

if Request.Form("b6")="3" then
	iScore=iScore+10
end if

if Request.Form("b7")="1" then
	iScore=iScore+10
end if

if Request.Form("b8")="3" then
	iScore=iScore+10
end if

if Request.Form("b9")="1" then
	iScore=iScore+10
end if

if Request.Form("b10")="4" then
	iScore=iScore+10
end if

if Request.Form("f")="3" then
	iScore=iScore+10
end if

if Request.Form("f2")="1" then
	iScore=iScore+10
end if

if Request.Form("f3")="1" then
	iScore=iScore+10
end if

if Request.Form("f4")="1" then
	iScore=iScore+10
end if

if Request.Form("f5")="4" then
	iScore=iScore+10
end if

if Request.Form("f6")="3" then
	iScore=iScore+10
end if

if Request.Form("f7")="1" then
	iScore=iScore+10
end if

if Request.Form("f8")="1" then
	iScore=iScore+10
end if

if Request.Form("f9")="1" then
	iScore=iScore+10
end if

if Request.Form("f10")="4" then
	iScore=iScore+10
end if

if Request.Form("w")="1" then
	iScore=iScore+10
end if

if Request.Form("w2")="1" then
	iScore=iScore+10
end if

if Request.Form("w3")="2" then
	iScore=iScore+10
end if

if Request.Form("w4")="4" then
	iScore=iScore+10
end if

if Request.Form("w5")="1" then
	iScore=iScore+10
end if

if Request.Form("w6")="1" then
	iScore=iScore+10
end if

if Request.Form("w7")="3" then
	iScore=iScore+10
end if

if Request.Form("w8")="3" then
	iScore=iScore+10
end if

if Request.Form("w9")="4" then
	iScore=iScore+10
end if

if Request.Form("w10")="3" then
	iScore=iScore+10
end if

if Request.Form("h")="2" then
	iScore=iScore+10
end if

if Request.Form("h2")="2" then
	iScore=iScore+10
end if

if Request.Form("h3")="4" then
	iScore=iScore+10
end if

if Request.Form("h4")="3" then
	iScore=iScore+10
end if

if Request.Form("h5")="4" then
	iScore=iScore+10
end if

if Request.Form("h6")="2" then
	iScore=iScore+10
end if

if Request.Form("h7")="2" then
	iScore=iScore+10
end if

if Request.Form("h8")="4" then
	iScore=iScore+10
end if

if Request.Form("h9")="3" then
	iScore=iScore+10
end if

if Request.Form("h10")="4" then
	iScore=iScore+10
end if

if Request.Form("i")="1" then
	iScore=iScore+10
end if

if Request.Form("i2")="4" then
	iScore=iScore+10
end if

if Request.Form("i3")="2" then
	iScore=iScore+10
end if

if Request.Form("i4")="4" then
	iScore=iScore+10
end if

if Request.Form("i5")="2" then
	iScore=iScore+10
end if

if Request.Form("i6")="1" then
	iScore=iScore+10
end if

if Request.Form("i7")="4" then
	iScore=iScore+10
end if

if Request.Form("i8")="2" then
	iScore=iScore+10
end if

if Request.Form("i9")="4" then
	iScore=iScore+10
end if

if Request.Form("i10")="2" then
	iScore=iScore+10
end if

if Request.Form("d")="2" then
	iScore=iScore+10
end if

if Request.Form("d2")="3" then
	iScore=iScore+10
end if

if Request.Form("d3")="3" then
	iScore=iScore+10
end if

if Request.Form("d4")="4" then
	iScore=iScore+10
end if

if Request.Form("d5")="2" then
	iScore=iScore+10
end if

if Request.Form("d6")="2" then
	iScore=iScore+10
end if

if Request.Form("d7")="3" then
	iScore=iScore+10
end if

if Request.Form("d8")="3" then
	iScore=iScore+10
end if

if Request.Form("d9")="4" then
	iScore=iScore+10
end if

if Request.Form("d10")="2" then
	iScore=iScore+10
end if

if Request.Form("v")="3" then
	iScore=iScore+10
end if

if Request.Form("v2")="2" then
	iScore=iScore+10
end if

if Request.Form("v3")="3" then
	iScore=iScore+10
end if

if Request.Form("v4")="2" then
	iScore=iScore+10
end if

if Request.Form("v5")="3" then
	iScore=iScore+10
end if

if Request.Form("v6")="3" then
	iScore=iScore+10
end if

if Request.Form("v7")="2" then
	iScore=iScore+10
end if

if Request.Form("v8")="3" then
	iScore=iScore+10
end if

if Request.Form("v9")="2" then
	iScore=iScore+10
end if

if Request.Form("v10")="3" then
	iScore=iScore+10
end if









%>


<%


if iScore  < 40 then sGrade="Failed"
if iScore  = 40 then sGrade="Passed"
if iScore  >= 41 and iScore <=50 then sGrade="Second Class"
if iScore  >= 51 and iScore <=70 then sGrade="First Class"
if iScore  >= 71 and iScore <=100 then sGrade="Distinction"


%>

<u><b>Your Result</b></u>
<br>
<br>
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
<tr>
	<td><%=session("uid")%></td>

<td><%=session("semVal")%></td>

<td><%=session("sUsrSub")%></td>

<td><%=iScore%></td>

<td><%=sGrade%></td>

<%exTakn=now%>
<td><%=exTakn%></td>
</tr>
</tbody>
</table>
<br>
<br>
<a href="ex1blinktext.htm" target="_top" title="Click">Log out.</a><br>
<br>
<%
set con=server.CreateObject("adodb.connection")
set rs=server.CreateObject("adodb.recordset")
sRoot= server.MapPath("./")
con.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & sRoot & "\OnLineExamDB.mdb;"
sSql="insert into result values('"&session("uid")&"','"&session("semVal")&"','"&session("sUsrSub")&"','"&iScore&"','"&sGrade&"',#"&exTakn&"#)"
con.Execute sSql
%>
<%'=sSql%>












<P>&nbsp;</P>

</BODY>
</HTML>
