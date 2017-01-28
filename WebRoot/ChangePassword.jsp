<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="com.detect.db.ConnectionFactory"%>




<% 
RequestDispatcher rd;
Connection con;
PreparedStatement ps;
ResultSet rs;
%>



<%
 con=ConnectionFactory.getConnection();

 %>


<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");


String pass="";
int id=0;
try{
String status="Password changed successfully";

Statement st=con.createStatement();
 rs=st.executeQuery("select * from register where password='"+currentPassword+"'");
while(rs.next()){
id=rs.getInt(1);
pass=rs.getString(4);
}
System.out.println(id+ " "+pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update register set password='"+Newpass+"' where id='"+id+"'");
out.println("Password changed successfully");
st.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
rd=request.getRequestDispatcher("ChangePassword.jsp");
rd.include(request,response);
}
catch(Exception e){
out.println(e);
}
%>
