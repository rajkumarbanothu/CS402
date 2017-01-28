package com.nit.action;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.detect.db.ConnectionFactory;
public class PersistantAction extends HttpServlet {

	private static final long serialVersionUID = 1L;

	RequestDispatcher rd;

	Connection con;
	int count;

	PreparedStatement ps;

   String to;

	public PersistantAction() {
		con = ConnectionFactory.getConnection();
	}

	public void doGet(HttpServletRequest request,

	HttpServletResponse response) throws IOException, ServletException {
		doPost(request, response);
		

	}

	public void doPost(HttpServletRequest request,
	HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hi10");
		HttpSession session=request.getSession();
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
	  	
	
	Statement statement = null;
	try {
		statement = con.createStatement();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
		
		
		
		
		
ResultSet resultset = null;
try {
	resultset = statement.executeQuery("select count(*) from inbox where toaddress='"+ to + "' and msgtype='T'");
} catch (SQLException e) {
	
	e.printStackTrace();
}
	 try {
		count = resultset.getRow();
		System.out.println("hi2");
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
if (count > 5) {
		
		rd=request.getRequestDispatcher("./P1.jsp");
	} 
	
	}

}

