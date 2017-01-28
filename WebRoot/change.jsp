<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body background="images/blue-band-bending-backgrounds-wallpapers.jpg">
<img src="images/cooltext762122871.gif" align="top" width="908" height="142" style="width: 908px;">
<form action="ChangePassword.jsp" method="post">
<center>
<table>
<tr><td>Current Password</td><td><input type="password" name="current" ></td></tr>
<tr><td>New Password</td><td><input type="password" name="new"></td></tr>
<tr><td>Confirm Password</td><td><input type="password" name="confirm"></td></tr>
<tr><td><input type="submit" value="Change Password"></td></tr>
</table>
</center>
</form>


</body>
</html>