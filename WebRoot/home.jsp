<%@ page import="com.nit.*" %>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script language=javascript> 

function validate()
{
var form=document.reg
if(form.username.value=="")
{
alert("plz enter the Email::ex:hari@mail.com");
return false;

}
else if(form.password.value=="")
{
alert("plz enter the password");
return false;
}
return true;
}
</script>




<body background="images/blue-band-bending-backgrounds-wallpapers.jpg">
<form  action="./LoginAction" method="Post" name="reg" onsubmit="return validate()">
<img src="images/cooltext890345141.gif" align="top" width="908" height="142" style="width: 908px;">
<div style="position: absolute; width: 301px; height: 24px; z-index: 5; left: 304px; top: 348px" id="layer9">
	<div style="position: absolute; width: 194px; height: 100px; z-index: 1; left: 295px; top: -116px" id="layer17">
<font color=#000000>
<b>
<%
if((request.getAttribute("msg"))==null)
{
out.println("");
}
else
{%>
<!--
<br><font color=#009900><p align=left>Show Msg:</p></font>-->
<%
out.println("*"+request.getAttribute("msg"));
}
%></b></font>
</div>
	<b><i><font face="Palatino Linotype" color="#008080">&nbsp; &nbsp; 
	 &nbsp; </font></i></b>
	<p><b><i><font face="Palatino Linotype" color="#008080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp; </font><font face="Palatino Linotype" color="#008080" size="4"> </font>
	<font face="Palatino Linotype" color="#800080">
	&nbsp;<a href="forget.jsp"></a></font></i></b></div>
<pre>&nbsp;</pre>
<div style="position: absolute; width: 24px; height: 53px; z-index: 4; left: -1px; top: 35px;" id="layer7">
	<div style="position: absolute; width: 100px; height: 19px; z-index: 1; left: 111px; top: -40px; visibility: visible;" id="layer8">
		<b><font color="#800000" face="Goudy Old Style">
		<marquee width="75" style="color: #FFFFFF"></marquee></font></b></div>
	<p>&nbsp;</div>
&nbsp;<p></p>
<p>&nbsp;</p>
<table>
<tr>

<td>	
&nbsp;<td>
<pre>
&nbsp;</pre>
<p>&nbsp;</p>
<p></p>
<div style="position: absolute; width: 465px; height: 88px; z-index: 1; left: 171px; top: 23px" id="layer1">
	<div style="position: absolute; width: 195px; height: 21px; z-index: 1; left: 190px; top: 110px;" id="layer5">
		<i><b><font color="#800000"  size="2">Detecting People 
	</font></b></i></div>
	<blockquote>
		<h1 align="left"><b>
		&nbsp;<font size="7" face="Bodoni MT" color="#800080"></font><font size="7" face="French Script MT" color="#800080">
		 </font></b></h1>
	</blockquote>
</div>
<pre>
&nbsp;</pre>
<pre>
&nbsp;</pre>
<pre>

</pre>
<td>
<blockquote>
	<div style="position: absolute; width: 244px; height: 100px; z-index: 7; left: 543px; top: 222px;" id="layer13">
		<p align="center"> 
<font size="2" color="blue"><b>UserName</b></font><font color="#008080"> 
		</font>  
		<input type="text" name="username" value=@mail.com style="width: 134px; height: 22px; color: darkblue;" size="20"><br> 
		<br> 
		<b><font size="2" color="blue">Password</font><font color="#000080"> </font> 
 
<font color="#0000ff">&nbsp;</font></b><input type="password" name="password" value="*****" size="18" style="color: darkblue;"><font color="#800000"><br>&nbsp; 
		</font>	<br></p><p align="center">&nbsp; &nbsp; &nbsp;&nbsp; <input type="submit" value="Login" name="b" onclick="login()"></p></div>
	<pre>	</pre>
</blockquote>
</tr>
<tr>

<td>	&nbsp;<td>
&nbsp;<td>
&nbsp;</tr>
</table>
<div style="position: absolute; width: 100px; height: 44px; z-index: 10; left: 639px; top: 172px;" id="layer16">
<h3><u><b><font  color="#800080">Login</font></b></u></h3>
</div>
<div style="position: absolute; width: 27px; height: 5px; z-index: 9; left: 729px; top: 62px;" id="layer15">
<a href="sett.jsp"><br></a></div>
<div style="position: absolute; width: 327px; height: 313px; z-index: 8; left: 15px; top: 109px" id="layer14">

<font face="Bodoni MT" color=#000066>
<marquee direction=up  height="312" width="274" scrollamount=2><b><u><font color=#003300></font></u></b><br><br><br><a href="Target.jsp"><b>Targeted Intro</b></a><br>click above link concept of Non Targeted Info<br><br><a href="classification.jsp"><b>Classification of the hyperlinks</b></a><br>Two different type of hyperlinks in the Detecting e-mails
<!--<br><br><a href="http://localhost:8080/Phising/links/arc.html"><b>Architecture Diagram</b></a><br>click above link shown Architecture Diagram</marquee></font>-->
</font>
</marquee>
</div>

<div style="position: absolute; width: 221px; height: 20px; z-index: 3; left: 322px; top: 132px;" id="layer6">
	<b><i><font face="Palatino Linotype" color="#008000"><br><br><br><br><br><br><br>Are you NewUser</font></i></b><font face="Palatino Linotype"><b><i><u><font color="#800080"> </font></u></i></b></font>
	
<font face="Palatino Linotype" color=#000066>
	<p><b><i></i></b></p></font><font face="Bodoni MT" color=#000066><font face="Palatino Linotype"><b><i><u><font color="#800080"><a href="Register.jsp">SignUp</a></font></u><font color="#0000FF">
	</font><font color="#008000">&nbsp;here</font></i></b></font></div>
</form>
</body>

</html>