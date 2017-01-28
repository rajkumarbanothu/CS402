<%@ page import="java.sql.*" %>
<%@ page import="com.detect.db.*" %>


<HTML>
       <HEAD>
       <TITLE></TITLE>
       </HEAD>
       <body background="images/blue-band-bending-backgrounds-wallpapers.jpg">
   <img src="images/cooltext890345141.gif" align="top" width="908" height="142" style="width: 908px;">
    <br>
 
       <center><h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; [<b><font size="2"> 
					<a href="logout.jsp">Logout</a>] </font></b></h3>
       <H2> The Persistant Threat Mails</H2>
       <%
        Connection connection=null;
          connection=ConnectionFactory.getConnection();
          Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select toaddress from inbox where msgtype='T' group by toaddress having count(*)>5") ;
       %>
      <TABLE BORDER="1" bordercolor="teal">
      <TR>
     <TH>Toaddress</TH>
     </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getString(1) %></td>
    </TR>
      <% } %>
      
    
     </TABLE>
    <center> <a href="Cse.jsp">Back</a></center>
    </center>
     </BODY>
</HTML>