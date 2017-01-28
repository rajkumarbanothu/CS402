package com.nit.action;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.detect.db.ConnectionFactory;

public class FileDao extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher rd;
	Connection con;
	PreparedStatement ps;

	public FileDao() {
		con = ConnectionFactory.getConnection();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();

		doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession();
		String to = request.getParameter("to");
		String sub = request.getParameter("subject");
		String msg = request.getParameter("msg");

		String attach = request.getParameter("attach");
		File f = new File(attach);
		FileInputStream fis = new FileInputStream(f);

		String filePath = request.getParameter("attach");
		f = new File(filePath);
		long filesize = f.length();
		long filesizeInKB = filesize / 1024;

		try {
			ps = con.prepareStatement("insert into inbox values(?,?,?,?,?)");

			ps.setString(1, to);
			ps.setString(2, sub);
			ps.setString(3, msg);
			ps.setBinaryStream(4, fis, (int) f.length());

		} catch (SQLException e1) {

			e1.printStackTrace();
		}

		if (filesizeInKB < 40) {
			System.out.println("hi this is file");
			rd = request.getRequestDispatcher("./Success.jsp");// non-targeted
			rd.forward(request, response);

		} else {
			// call to targeted mail.
			rd = request.getRequestDispatcher("./Fail.jsp");// targeted
			rd.forward(request, response);

		}

		String[] str = msg.split("\n");
		System.out.println("From Msg Body:");
		List<String> list = new ArrayList<String>();
		String email = null;
		for (String s : str) {
			String[] str1 = s.split(":");
			if (str1[0].equalsIgnoreCase("your email")) {
				email = str1[1];
			}
			list.add(str1[0] + ":");
			System.out.println(str1[0] + ":");
		}
		boolean emailFlag = false;
		try {
			emailFlag = validateEmail(email.trim());
			System.out.println(emailFlag);
		} catch (Exception e) {
		}

		System.out
				.println("***************************************************************************************");
		List<String> list1 = new ArrayList<String>();
		try {
			// FileInputStream fstream = new FileInputStream(new
			// File("src/sample.txt"));
			FileInputStream fstream = new FileInputStream(new File(request
					.getRealPath(".")
					+ "/sample.txt"));

			DataInputStream in = new DataInputStream(fstream);
			BufferedReader br = new BufferedReader(new InputStreamReader(in));
			String strLine;

			System.out.println("From Text File:");
			while ((strLine = br.readLine()) != null) {

				System.out.println(strLine);
				list1.add(strLine);
			}
			in.close();
			fstream.close();
		} catch (Exception e) { // Catch exception if any
			System.err.println("Error: " + e.getMessage());
		}
		// list ---- from msg body
		// list1 ---- from text file
		boolean flag = false;
		for (String textValue : list1) {
			for (String msgValue : list) {
				if (msgValue.trim().equalsIgnoreCase(textValue.trim())) {
					flag = true;
					break;
				} else {
					flag = false;
				}
			}
			if (!flag) {
				break;
			}
		}
		if (flag) {
			if (emailFlag) {
				try {
					ps.setString(5, "NT");
					ps.executeUpdate();
				} catch (Exception e) {
					// TODO: handle exception
				}
				System.out.println("inserted");

				System.out.println("NT - valid email");
				rd = request.getRequestDispatcher("./Success.jsp");
				rd.forward(request, response);
				// call to non targeted email
			} else {
				try {
					ps.setString(5, "T");
					ps.executeUpdate();
				} catch (Exception e) {
					// TODO: handle exception
				}

				System.out.println("T - not valid email");
				// call to targeted mail
				RequestDispatcher rd = request
						.getRequestDispatcher("./Fail.jsp");
				// rd.forward(request, response);
			}
		} else {

			try {
				ps.setString(5, "T");
				ps.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			}

			// targeted mail call
			System.out.println("T");
			RequestDispatcher rd = request.getRequestDispatcher("./Fail.jsp");
			// rd.forward(request, response);
		}

		// }
	}

	static boolean validateEmail(String email) {
		Pattern pattern;

		final String EMAIL_PATTERN = "[a-zA-Z]*[0-9]*@[a-zA-Z]*\\.[a-zA-Z]*";

		pattern = Pattern.compile(EMAIL_PATTERN);

		return validate(email, pattern);
	}

	public static boolean validate(final String hex, Pattern pattern) {
		Matcher matcher;
		matcher = pattern.matcher(hex);
		return matcher.matches();

	}

}
