<%@ page import="com.nit.*;" %>

<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>username 
signout</title>
<script language=javascript>

function validate()
{
var form=document.register
if(form.to.value=="")
{
alert("Please enter toaddress");
return false;

}
else if(form.subject.value=="")
{
alert("Please enter subject");
return false;

}
if(form.attach.value=="")
{
alert("Please add attch the file");
return false;
}
if(form.msg.value=="")
{
alert("Please enter message");
return false;

}

retrun true;
}


</script>
</head>
<img src="images/cooltext890345141.gif" align="top" width="900" height="100"><br/><br/>

<body background="images/blue-band-bending-backgrounds-wallpapers.jpg">

<form action="./FileDemo" method="get" name="register" onsubmit="return validate()">
<div style="position: absolute; width: 45px; height: 48px; z-index: 2; left:710px; top:181px" id="layer2">
<div style="position: absolute; width: 840px; height: 103px; z-index: 1; left: -731px; top: -184px;" id="layer3">
<div style="position: absolute; width: 172px; height: 28px; z-index: 1; left: 329px; top: 49px" id="layer7">
<b><font size="7" color="#FFFFFF" face="Chiller">     </font></b></div>
<img src="image/in.jpg"></div>
&nbsp;</div>
<div style="position: absolute; width: 249px; height: 100px; z-index: 3; left: 235px; top: 494px;" id="layer11">
<font color=#CC0000>
<b>
<br><font color=#009900><p align=left></p></font>
</b></font>
</div>
<p><font color="#970000">
</font>
<font color="#970000"></font></p>
  <div style="position: absolute; width: 669px; height: 119px; z-index: 1; left:2px; top:141px" id="layer1"><br><p>
</p>
</div>
<!--<table  width="663">
<tr><td>-->
<table  style="top: 74px; height: 60px; left: 0px; width: 332px;">
<tr><td width="772" background="image/b11.jpg" height="50">
<blockquote>
	
	<center>
	<blockquote>
		<blockquote>
			<blockquote>
				<pre><b><a href="viewInbox.jsp"><font size="4" color="#800080">ComposeEmail</font></a></b>
</pre> <div style="position: absolute; width: 55px; height: 24px; z-index: 1; left: 367px; top: 11px;" id="layer6">[<b><font size="2"> 
					<a href="logout.jsp">Logout</a> ] 
				</font></b></div>
					

			</blockquote>
			<blockquote>
				<pre><font face="Baskerville Old Face"><b><a href="" ><font size="4" color="#800080"></font></a></b></font><font size="5"><font color="#800080"></font></font><b><a href="phisbox.jsp"><font color="#800080" face="Baskerville Old Face" size="4"></font></a></b><font color="#800080" size="5">      </font><b><a href="compose.jsp"><font size="4" color="#800080" face="Baskerville Old Face"></font></a><font size="4" color="#800080" face="Baskerville Old Face">  </font></b></pre>
			<br/>
			<br/>
			

			</blockquote>
		</blockquote>
	</blockquote>
	</center>

<!--<td>-->
</blockquote>
</tr>
</table>

	<div style="position: absolute; width: 417px; height: 100px; z-index: 3; left: 143px; top: 147px;" id="layer9">
<pre>

                   <input type="submit" value="Send"> <input type="reset" value="Reset">
<font color="#000080"><b>To</b></font>	<input type="text" name="to" size="38">

<font color="#000080"><b>Subject</b></font>	<input type="text" name="subject" size="38"><br>
<font color="#000080"><b>Attach</b></font>	<input type="file" name="attach" size="38">
<br><br></pre></div>





	<div>
<div style="position: absolute; width: 104px; height: 119px; z-index: 2; left: 144px; top: 294px;" id="layer8">

<pre><font color="#000080"><b>Message</b></font>
	<textarea cols=35 rows=10 name="msg" ></textarea></pre></div>
</div>






</form>



</body>

</html>