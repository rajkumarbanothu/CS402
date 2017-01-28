<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="com.detect.db.*"%>
<%!String path;%>
<HTML>
	<HEAD>
		<TITLE></TITLE>
	</HEAD>
	<body background="images/background_insurance.jpg">
		<img src="images/cooltext890345141.gif" align="top" width="900"
			height="100">
		<br>

		<center><h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; [<b><font size="2"> 
					<a href="logout.jsp">Logout</a>] </font></b></h3>
			<H2> 
				The Non-Targeted Malicious Data 
			</H2>
			<%
				Connection connection = null;
				connection = ConnectionFactory.getConnection();

				//  = DriverManager.getConnection("jdbc:oracle:thin:@server3:1521:server3","target","target");
				Statement statement = connection.createStatement();
				ResultSet resultset = statement
						.executeQuery("SELECT * FROM INBOX WHERE MSGTYPE='NT'");
			%>
			<TABLE BORDER="1">
				<TR>

					<TH>
						Toaddress
					</TH>


					<th>
						FileInformation
					</th>
				</TR>
				<%
					while (resultset.next()) {
				%>
				<TR>
					<TD>


						<%=resultset.getString(1)%></td><td>
					<%
						Blob file = resultset.getBlob(4);
							byte aniFile[] = file.getBytes(1, (int) file.length());
							path = request.getRealPath("./data") + ".txt";
							System.out.println("path  :" + path);
							OutputStream fout = new FileOutputStream(path);
							fout.write(aniFile);

							File f1 = new File(path);
							FileInputStream fstream = new FileInputStream(f1);
							DataInputStream in = new DataInputStream(fstream);
							BufferedReader br = new BufferedReader(
									new InputStreamReader(in));
							String strLine;
							while ((strLine = br.readLine()) != null) {
								out.println(strLine);
							}

							in.close();
					%>

					</TD>
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