package com.nit.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.detect.db.ConnectionFactory;

public class LoginAction extends HttpServlet {
	Connection con = null;
	PreparedStatement ps = null;
	RequestDispatcher rd = null;
	ResultSet rs = null;
	String target = "";
HttpSession session,session1;
	public LoginAction() {
		con = ConnectionFactory.getConnection();
	}

	public void destroy()

	{
		if (con != null) {

			try {
				con.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}

		if (ps != null) {

			try {
				ps.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
       session1=request.getSession();
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String userName = request.getParameter("username");
		session1.setAttribute("userName", userName);
		String userPass = request.getParameter("password");
		// String userRePass = request.getParameter("userRePassWord");
		
		try {
			String queryString = "SELECT username,password  FROM register WHERE username=? and password=?";
			// con = ConnectionFactory.getConnection();
			ps = con.prepareStatement(queryString);
			ps.setString(1, userName);
			ps.setString(2, userPass);
			rs = ps.executeQuery();
			// Creating Servlet Context object
			if (rs.next()) {
				HttpSession session = request.getSession(true);
				session.setAttribute("usname", rs.getString(1));

				RequestDispatcher dispatcher = request
						.getRequestDispatcher("/inbox.jsp");
				dispatcher.forward(request, response);

			} else {
				request.setAttribute("status", "Invalid Username&Password");
				target = "./home.jsp";
				RequestDispatcher dispatcher = request
						.getRequestDispatcher(target);
				dispatcher.forward(request, response);

			}

		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
		}

	}

}
