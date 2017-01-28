<%@ page import="java.sql.*"%>
<%@ page import="com.detect.db.*"%>
<HTML>
	<HEAD>
		<TITLE></TITLE>
	</HEAD>
	<body background="images/background_insurance.jpg">
		<img height="142" width="908" align="top" src="images/cooltext890345141.gif" style="width: 908px;">&nbsp;

		<center><h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; [<b><font size="2"> 
					<a href="logout.jsp">Logout</a>] </font></b></h3><H3> 
				   Inbox Details&nbsp;<b><font size="2"> </font></b></H3><%Connection connection = null; 
 
				connection = ConnectionFactory.getConnection(); 
 
				//  = DriverManager.getConnection(&quot;jdbc:oracle:thin:@server3:1521:server3&quot;,&quot;target&quot;,&quot;target&quot;); 
				Statement statement = connection.createStatement(); 
				ResultSet resultset = statement.executeQuery("select * from inbox where msgtype='NT'"); 
			%>
			<TABLE BORDER="1">
				<TR>

					<TH>
						ToAddress
					</TH>
					<TH>
						Subject
					</TH>
					<TH>
						Message
					</TH>
					
				</TR>
				<%
					while (resultset.next()) {
				%>
				<TR>
					<TD>
						<%=resultset.getString(1)%></td>
					<TD>
						<%=resultset.getString(2)%></TD>
					<TD>
						<%=resultset.getString(3)%></TD>
					

				</TR>
				<%
					}
				%>

			</TABLE>
			<center>
				<a href="./inbox.jsp">Back</a>
			</center>
		</center>
	</BODY>
</HTML>