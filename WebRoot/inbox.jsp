<%@ page import="com.nit.action.*;" %>

<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">


<script type="text/javascript">
onload = function() {
    if (!document.getElementsByTagName || !document.createTextNode) return;
    var rows = document.getElementById('table1').getElementsByTagName('tbody')[0].getElementsByTagName('tr');
    for (i = 1; i < rows.length; i++) {
        rows[i].onclick = function() {
        var v=""+this.rowIndex;
        document.forms[0].index.value=v;
          document.forms[0].action="http://localhost:8080/Phising/Msg";
          document.forms[0].submit();
      }
    }
}
</script>
</head>

<body background="images/blue-band-bending-backgrounds-wallpapers.jpg"><form  method="get"><div style="position: absolute; width: 45px; height: 48px; z-index: 2; left:710px; top:181px" id="layer2"><div style="position: absolute; width: 834px; height: 100px; z-index: 1; left: -731px; top: -184px" id="layer3"><img src="images/cooltext890345141.gif" align="top" width="908" height="142" style="width: 908px;"></div>
&nbsp;</div>
<p><font color="#970000">
</font>
<font color="#970000"></font></a></font></p>
<div style="position: absolute; width: 669px; height: 169px; z-index: 1; left:2px; top:141px" id="layer1">
	
	<blockquote>
		<blockquote>
			<blockquote>
				<h1><b><font size="5" color="#800000" >Welcome to User Home</font><font size="6" color="#800000" face="Chiller">
				</font></b><font color="#000080" face="French Script MT"><b>
				<font face="Chiller" color="#800000" size="6">
				<input type=hidden name="index" size="20"></font></b></font>
				</h1>
			</blockquote>&nbsp;&nbsp;&nbsp;&nbsp; 
			<br><div style="position: absolute; width: 317px; height: 59px; z-index: 1; left: 459px; top: 0px" id="layer5">
				<div style="position: absolute; width: 55px; height: 24px; z-index: 1; left: 367px; top: 11px;" id="layer6">[<b><font size="2"> 
					<a href="logout.jsp">Logout</a> ] 
				</font></b></div><center>
				</center>
			</div>
		</blockquote>
	</blockquote>
<p>
</p>
<!--<table  width="663">
<tr><td>-->
<table  width="778">
<tr><td width="772" background="image/b11.jpg" height="50">
<blockquote>
	
	<center>
	<blockquote>
		<blockquote>
			<blockquote>
				<pre><font face="Baskerville Old Face"><b><a href="viewInbox.jsp" ><font size="4" color="#800080">InBox</font></a></b></font><font size="5"><font color="#800080">   </font></font><b><a href="Cse.jsp"><font color="#800080" face="Baskerville Old Face" size="4">ComposeMail</font></a></b>    <b><a href="Tme.jsp"><font size="4" color="#800080" face="Baskerville Old Face">TME</font></a><font color="#800080" size="5">  </font><b><a href="Ntme.jsp"><font size="4" color="#800080" face="Baskerville Old Face">NTME</font></a></b><font color="#800080" size="5"> </font><b><a href="FileBased.jsp"> <font size="4" color="#800080" face="Baskerville Old Face">FileClassification</font></a> <font color="#800080" size="5"> </font><b> <a href="Possible.jsp"><font size="4" color="#800080" face="Baskerville Old Face">PossibleOutcomes</font></a></b>
				</b>
				</pre>
			</blockquote>
		</blockquote>
	</blockquote>
	</center>

<!--<td>-->
</blockquote>
</tr>
<tr>
<td height="136">
	<blockquote>
		<p>&nbsp;</p><br></blockquote>
<!--</tr>
</table>-->
</tr>
</table>
</form>

</body>

</html>