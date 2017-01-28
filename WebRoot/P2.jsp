<%@ page import="java.sql.*"%>
<%@ page import="com.detect.db.*"%>
<HTML>
	<HEAD>
		<TITLE></TITLE>
	</HEAD>
	<body background="images/blue-band-bending-backgrounds-wallpapers.jpg">
		<img src="images/cooltext762122871.gif" align="top" width="900"
			height="100">
		<br>

		<center>
			<H1>
			To View The Parsitant Threat
			</H1>
			<%
				Connection connection = null;

				connection = ConnectionFactory.getConnection();

				//  = DriverManager.getConnection("jdbc:oracle:thin:@server3:1521:server3","target","target");
				Statement statement = connection.createStatement();
				/*ResultSet r=statement.executeQuery("select count(*) from inbox where toaddress='jcnm@mail.com' and msgtype='T'");
				
				int count=r.getRow(); */
				String to=null;
				ResultSet resultset = statement.executeQuery("select distinct (toaddress) from inbox where toaddress='"+to+"'");
			%>
			
			
			
			
			
			<TABLE BORDER="1">
				<TR>

					<TH>
						Toaddress
					</TH>
					
				</TR>
				<%
					while (resultset.next()) {
				%>
				<TR>
					<TD>
						<%=resultset.getString(1)%></td>
					
				
				<td>
					
					
					
					
					</td>	
					
				</TR>
				<%
					}
				%>


			</TABLE>
			<center>
				<a href="Cse.jsp">Back</a>
			</center>
		</center>
	</BODY>
</HTML>