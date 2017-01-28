<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.detect.db.*"%>
<HTML>
	<HEAD>
		<TITLE></TITLE>
	</HEAD>
	<body background="images/blue-band-bending-backgrounds-wallpapers.jpg">
		
		<img src="images/cooltext890345141.gif" align="top" width="900"
			height="100">
		<center><h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; [<b><font size="2"> 
					<a href="logout.jsp">Logout</a>] </font></b></h3>
		<h3>All Possible Outcomes after the Classifier applied</h3>
        <br>
        <br>
     <table border="1">
    <tr bgcolor="#asHblue">
  <td width="130"><div align="center" class="style8"><b></b></div></td>
        <td width="130"><div align="center" class="style8"><b>Actually TME</b></div></td>
        <td width="130"><div align="center" class="style8"><b>Actually NTME</b></div></td>
        
      </tr>
     
     <%
      String tp,fp,fn,tn;
      boolean Tme=true;
      boolean Ntme=true;
   
   
    if(Tme)
    {
    out.println("");
   }
   
   
   if(!Tme)
   {
     out.println("");
   }
   
   if(Ntme)
   {
   out.println("");
   }
   
   
   if(!Ntme)
   {
   out.println("");
   }
 %>
     
     
  <tr bgcolor="#CEC9FA" >
   
    <td bgcolor="#F4F5F7"><div align="center"><span class="style7">Predicted as TME</span></div></td>
   <td bgcolor="#F4F5F7"><div align="center"><span class="style7">True possitive</span></div></td>
   <td bgcolor="#F4F5F7"><div align="center"><span class="style7">False possitive</span></div></td>
  </tr>
     <tr bgcolor="#CEC9FA" >
  <td bgcolor="#F4F5F7"><div align="center"><span class="style7">Predicted as NTME</span></div></td>
           <td bgcolor="#F4F5F7"><div align="center"><span class="style7">False Negative</span></div></td>
           <td bgcolor="#F4F5F7"><div align="center"><span class="style7">True Negative</span></div></td>
  </tr>
     
 </table>
 <br/>
  <br/>
   <br/>
    

    

      
 <center> <a href="home.jsp">HomePage</a></center>
</center>	
</HTML>