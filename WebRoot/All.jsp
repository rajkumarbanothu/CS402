<%@ page import="java.sql.*"%>
<%@ page import="com.detect.db.*"%>
<HTML>
	<HEAD>
		<TITLE></TITLE>
	</HEAD>
	<body background="images/blue-band-bending-backgrounds-wallpapers.jpg">
		<img src="images/cooltext762122871.gif" align="top" width="908"
			height="142" style="width: 908px;">
		<br>

		<center>
			<H1>
				All possible mails
			</H1>
			<%
				Connection connection = null;
                connection = ConnectionFactory.getConnection();
                Statement statement = connection.createStatement();
				ResultSet resultset = statement.executeQuery("select * from inbox");
			%>
			<TABLE BORDER="1">
				<TR>

					<TH>
						Toaddress
					</TH>
					<TH>
						Subject
					</TH>
					<TH>
						Msg
					</TH>
					<TH>
						Attach
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
					<TD>
						<%=resultset.getBytes(4)%></TD>
				</TR>
				<%
					}
				%>


			</TABLE>
			<center>
				<a href="Compose.jsp">Back</a>
			</center>
		</center>
	</BODY>
</HTML>