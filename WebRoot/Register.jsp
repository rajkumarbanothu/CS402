<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body background="images/blue-band-bending-backgrounds-wallpapers.jpg">
  <script language=javascript> 

function validate()
{
var form=document.reg
if(form.no.value=="")
{
alert("Please enter ID as Integer");
return false;

}
else if(form.name.value=="")
{
alert("plz enter your name");
return false;
}
else if(form.username.value=="")
{
alert("please enter username");
return false;
}
else if(form.password.value=="")
{
alert("please enter password");
return false;
}
else if(form.retype.value=="")
{
alert("please re-enter the password");
return false;
}


return true;
}
</script>

  <img src="images/cooltext762122871.gif" align="top" width="908" height="142" style="width: 908px;">
  
  <body bgcolor="">
  <center>
 
    <h1>Registration Form</h1>
<form action="./RegisterAction" method="get" name="reg"   onsubmit=" return validate()">

  
 <pre><b><font color="#000080"> UserId</font></b>          <font color="#008080"><input type="text" name="no"></font><br> 
 <b><font color="#000080">Name</font></b>		  <font color="#008080"><input type="text" name="name"></font><br>
<b><font color="#000080">UserName</font></b>	  <input type="text" name="username"><br> <font color="#000080"><b><br></b></font><b><font color="#000080">Password</font></b>          <input type="password" name="password"><br><br><br><b><font color="#000080">ReTypepassword     </font></b><input type="text" name="retype"><br>  
<b><font color="#000080">           Secret Question</font></b>  <select size="1" name="squest" >
						<option selected>What is Color?--</option>
						<option>Your PetName?--</option>
						<option>What is your Fisrt Scholl?--</option>
						<option> Your food?</option>
						<option>Food Item?--</option></select><br>
<b><font color="#000080">YourAnswer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font></b><font color="#008080"><input type="text" name="answer"></font><br>
  <input  type="submit"  value="Register"/> <input  type="reset"  value="Reset"/>
  
  
  
  
    </pre>
  </form>
</center>
 </body>
</html>
