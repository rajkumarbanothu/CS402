package com.nit.action;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;


import java.sql.PreparedStatement;

import java.sql.SQLException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.detect.db.ConnectionFactory;



public class RegisterAction extends HttpServlet {
Connection con=null;
PreparedStatement ps=null;
RequestDispatcher rd=null;

public RegisterAction()
{
	con=ConnectionFactory.getConnection();
}



public void destroy()

{
	if(con!=null)
	{
		
		try {
			con.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	if(ps!=null)
	{
		
		try {
			ps.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	
	
	
}
	
	
/*public void init(ServletConfig config)throws ServletException
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdnc:oracle:thin:@localhost:1521:xe","swam","swam");
			ps=con.prepareStatement("insert into register values(?,?,?,?,?,?)");
		
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
	*/
	
	

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		try {
			ps=con.prepareStatement("insert into register values(?,?,?,?,?,?,?)");
		} catch (SQLException e1) {


			e1.printStackTrace();
		}
		
		

		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
        HttpSession session=request.getSession();
        int no=Integer.parseInt(request.getParameter("no"));
		String name=request.getParameter("name");
		session.setAttribute("name", name);
		String username=request.getParameter("username");
		session.setAttribute("username", username);
		String password=request.getParameter("password");
		session.setAttribute("password", password);
		
		String ReTypep=request.getParameter("retype");
		session.setAttribute("ReTypep", ReTypep);
		String screat=request.getParameter("squest");
		session.setAttribute("screat", screat);
		String answer=request.getParameter("answer");
		session.setAttribute("answer", answer);
		
		
		try {
			ps.setInt(1, no);
			ps.setString(2,name);
			ps.setString(3,username);
			ps.setString(4,password);
			ps.setString(5,ReTypep);
			ps.setString(6, screat);
			ps.setString(7,answer);
			ps.executeUpdate();
		
			pw.println("<h1>Inserted successfully</h1>");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		//String path="home.jsp?inserted successfully";
		
		
		
		rd=request.getRequestDispatcher("viewUser.jsp");
		
		rd.forward(request, response);
		
		
		
		
		
		
		
		
		
		
		
		
		
		//ServletContext sc=getServletContext();
				//rd=rd.getRequestDispatcher("./home.jsp");
		//response.sendRedirect("Register.jsp");
		
	}	
		
		
		
		
		
	}
