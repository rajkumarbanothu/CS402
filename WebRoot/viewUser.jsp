<%@ page import="com.nit.*;" %>

<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>username 
signout</title>
<script language=javascript >
function nextt()
{
document.forms[0].action="inbox.jsp";
document.forms[0].submit();
}
</script>
</head>

<body>

<form method="post">
<div style="position: absolute; width: 45px; height: 48px; z-index: 2; left:710px; top:181px" id="layer2">
<div style="position: absolute; width: 834px; height: 100px; z-index: 1; left: -731px; top: -184px" id="layer3">
 <img  src="images/cooltext762122871.gif" align="top" width="900" height="100" style="top: 0px; height: 110px; left: 0px; width: 921px;"></div>
&nbsp;</div>
<div style="position: absolute; width: 171px; height: 50px; z-index: 5; left: 75px; top: 71px;" id="layer11">
<img src="images/wel.gif"></div>
<div style="position: absolute; width: 151px; height: 47px; z-index: 6; left: 340px; top: 102px;" id="layer12">
	<b><font  size="5" color="#0000FF">Detecting EMail</font></b></div>
<div style="position: absolute; width: 35px; height: 35px; z-index: 7; left: 290px; top: 114px;" id="layer13">
	<b><font face="Chiller" size="6" color="#800000">To</font></b></div>
<div style="position: absolute; width: 250px; height: 23px; z-index: 8; left: 159px; top: 232px" id="layer14">
<b><font size="3">
<%=session.getAttribute("username")%></font></b></div>
<div style="position: absolute; width: 249px; height: 21px; z-index: 9; left: 160px; top: 272px" id="layer15">
<font size="3">
<b><%=session.getAttribute("password")%></b></font></div>
<div style="position: absolute; width: 251px; height: 24px; z-index: 10; left: 491px; top: 230px" id="layer16">
<b><font size="3">
<%=session.getAttribute("name")%></font></b></div>
<div style="position: absolute; width: 250px; height: 22px; z-index: 11; left: 492px; top: 268px" id="layer17">
<b><font size="3">
<%=session.getAttribute("answer")%></font></b></div>
<p><font color="#970000">






</font>
<font color="#970000"></font></p>
 
</form>
<div style="position: absolute; width: 84px; height: 65px; z-index: 3; left: 66px; top: 233px" id="layer8">
	<b><font color="#800000">Email-Id</font></b><p><b><font color="#800000">Password</font></b></p>
	<div style="position: absolute; width: 68px; height: 58px; z-index: 1; left: 349px; top: -2px" id="layer9">
		<b><font color="#800000">name</font></b><p><b><font color="#800000">Answer</font></b></div>
</div>
<div style="position: absolute; width: 183px; height: 65px; z-index: 4; left: 339px; top: 327px" id="layer10">
<input type=button name=b1 style="width: 85; height: 55; border: 1px solid #FFFFFF; background-color: #FFFFFF; background-image: url('images/next.gif')" onclick="nextt()"></div>
 </body>

</html>