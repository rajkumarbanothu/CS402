<%@ page import="java.sql.*" %>
<%@ page import="com.detect.db.*" %>
<% HttpSession session1=request.getSession(); %>

<HTML>
       <HEAD>
       <TITLE></TITLE>
       </HEAD>
      <body background="images/background_insurance.jpg">
   <img src="images/cooltext890345141.gif" align="top" width="908" height="142" style="width: 908px;">
    <br>
 
       <center><h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; [<b><font size="2"> 
					<a href="logout.jsp">Logout</a>] </font></b></h3>
       <H2> The Targeted Malicious Emails</h2>
      

       <%
       
       
           Connection connection=null;
           
           connection=ConnectionFactory.getConnection();
           
          //  = DriverManager.getConnection("jdbc:oracle:thin:@server3:1521:server3","target","target");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from inbox where msgtype='T'") ;
       %>
      <TABLE BORDER="1">
      <TR>
    
      <TH>ToAddress</TH>
      <TH>Subject</TH>
      <TH>Message</TH>
     
      </TR>
      <% while(resultset.next()){ %>
      <TR>
      

       <TD> <%= resultset.getString(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       
      
      </TR>
      <% } %>
      
    
     </TABLE>
    <center> <a href="./inbox.jsp">Back</a></center>
    </center>
     </BODY>
</HTML>