<%@page language="java"%>
<%@page import="java.sql.*"%>
<table border="1">
<%
try {
Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@server3:1521:server3","target","target");
String query = "select * from inbox";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
if(rs.next()){
%>
<tr>
<tr><td>Toadd</td><td><input type="text" name="to" value="<%=rs.getString("toadress")%>"></td></tr>
<tr><td>Address</td><td><input type="text" name="subject" value="<%=rs.getString("subject")%>"></td></tr>
<tr><td>Msg</td><td><input type="text" name="msg" value="<%=rs.getInt("msg")%>"></td></tr>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>