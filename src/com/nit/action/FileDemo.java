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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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

import org.apache.commons.lang.StringUtils;

import com.detect.db.ConnectionFactory;

public class FileDemo extends HttpServlet {

	private static final long serialVersionUID = 1L;

	RequestDispatcher rd;

	Connection con;

	PreparedStatement ps;

	private String to;

	public FileDemo() {
		con = ConnectionFactory.getConnection();
	}

	public void doGet(HttpServletRequest request,

	HttpServletResponse response) throws IOException, ServletException {
		doPost(request, response);

	}

	public void doPost(HttpServletRequest request,

	HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		to = request.getParameter("to");
		session.setAttribute("to", "to");

		String sub = request.getParameter("subject");
		String msg = request.getParameter("msg");

		request.setAttribute("msg", msg);
		System.out.println(msg);
		String attach = request.getParameter("attach");
		File file = new File(attach);
		FileInputStream fis = new FileInputStream(file);
		try {
			ps = con.prepareStatement("insert into inbox values(?,?,?,?,?)");
			ps.setString(1, to);
			ps.setString(2, sub);
			ps.setString(3, msg);

			ps.setBinaryStream(4, fis, (int) file.length());
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

		// All Validations are done here
		String mailType = null;
		try {
			mailType = validateFields(request, response, msg, file);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if ("NT".equalsIgnoreCase(mailType)) {
			insertMailType(mailType);
			try {
				request.setAttribute("message", validatePersistentThreat(to));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			rd = request.getRequestDispatcher("./Success.jsp");
			rd.forward(request, response);
		} else if ("T".equalsIgnoreCase(mailType)) {
			insertMailType(mailType);
			try {
				request.setAttribute("message", validatePersistentThreat(to));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			rd =

			request.getRequestDispatcher("./Fail.jsp");

			rd.forward(request, response);
		} else {
			pw.println("Database error. Pelase try again.");
		}
	}

	private String validateFields(HttpServletRequest request,

	HttpServletResponse response, String msg, File file) throws

	Exception {
		String mailType = " ";
		// Comparing body with predefined keywords --

		// Validation -1
		boolean flag = compareBodyWithKeywords(msg, request, file);
		mailType = compareAndInsertData(msg, flag);

		// File Validation -- Validation - 2
		boolean validFile = validateFileSize(file);
		if (!validFile) {
			return "T";
		}///modified
		if ("T".equalsIgnoreCase(mailType)) {
			return mailType;
		} else {
			// Persistent Threat - Validation - 3
			mailType = validatePersistentThreat(to);

			// Recepient Validation - Validation - 4
			// TODO -- Need to add code for this.
		}
		return mailType;
	}

	private boolean validateFileSize(File f) {
		long filesize = f.length();
		long filesizeInKB = filesize / 1024;
		if (filesizeInKB < 26) {
			System.out.println("hi this is file");
			return true;
		} else {
			return false;
		}
	}

	private List<String> getDataFromBody(String msg) {
		String[] splitByNextLine = msg.split("\n");
		List<String> mailBody = new ArrayList<String>();
		for (String s : splitByNextLine) {
			String[] splitByColon = s.split(":");
			mailBody.add(splitByColon[0] + ":");
			System.out.println(splitByColon[0] + ":");
		}
		return mailBody;
	}

	private List<String> getKeywordsFromFile(HttpServletRequest request) {
		List<String> list1 = new ArrayList<String>();
		try {
			// FileInputStream fstream = new

			// FileInputStream(new
			// File("src/sample.txt"));
			FileInputStream fstream = new

			FileInputStream(new File(request.getRealPath(".") + "/sample.txt"));

			DataInputStream in = new

			DataInputStream(fstream);
			BufferedReader br = new BufferedReader(new

			InputStreamReader(in));
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
		return list1;
	}
	
	
	
	
	private boolean compareBody(String msg,HttpServletRequest request)
	{
		String[] splitByNextLine = msg.split("\n");
		boolean compare=comBody(msg);
		
		return true;
		
	}
	private boolean comBody(String msg) {


		
		
		
		return false;
	}

	private boolean compareBodyWithKeywords(String msg,
			HttpServletRequest request, File file) {
		
		// Checking for atleast one null value in the body
		boolean isBodyHasNull = nullCheckOfBody(msg);
		if(isBodyHasNull) {
			return false;
		}
		// Getting data from body of mail
		List<String> mailBody = getDataFromBody(msg);
		// Getting keywords from text file

		List<String> keywordsList =

		getKeywordsFromFile(request);

		boolean flag = false;
		for (String textValue : keywordsList) {
			for (String msgValue : mailBody) {
				if(msgValue.trim().equalsIgnoreCase(textValue.trim())) {
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
		return flag;
	}

	private boolean nullCheckOfBody(String msg) {
		String[] splitByNextLine = msg.split("\n");
		for (String s : splitByNextLine) {
			String[] splitByColon = s.split(":");
			if(null == splitByColon[1].trim() || splitByColon[1].trim().equalsIgnoreCase(StringUtils.EMPTY)) {
				return true;
			}
		}
		return false;
	}

	private String compareAndInsertData(String msg, boolean flag) {
		String[] splitByNextLine = msg.split("\n");
		// Validating Email in the body
		boolean validEmailFlag =

		validateEmailInBody(splitByNextLine);
		if (!validEmailFlag) {
			return "T"; 
		}
		if (flag) { 
			if (validEmailFlag) {
				System.out.println("inserted as NT");
				return "NT";
			} else {
				System.out.println("inserted as T");
				return "T";
			}
		} else {
			System.out.println("inserted as T");
			return "T";
		}
		// return "";
	}

	private boolean validateEmailInBody(String[] splitByNextLine) {
		boolean emailFlag = false;
		try {
			emailFlag = validateEmail(splitByNextLine);
			System.out.println(emailFlag);
			if (emailFlag) {
				return true;
			}
		} catch (Exception e) {
		}
		return emailFlag;
	}

	private boolean validateEmail(String[] str) {
		String email = "";
		for (String s : str) {
			String[] splitByColon = s.split(":");
			if (splitByColon[0].equalsIgnoreCase("your email")) {
				email = splitByColon[1];
				break;
			}
		}
		Pattern pattern;
		final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
		pattern = Pattern.compile(EMAIL_PATTERN);
		return validate(email.trim(), pattern);
	}

	public boolean validate(final String hex, Pattern pattern) {
		Matcher matcher = pattern.matcher(hex);
		System.out.println(matcher.matches());
		return matcher.matches();

	}

	private void insertMailType(String mailType) {
		try {
			ps.setString(5, mailType);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public String validatePersistentThreat(String to) throws Exception {
		int count = getMailCount(to);
		if (count > 5) {
			return "T";
		} else {
			return "NT";
		}
	}

	public int getMailCount(String to) throws SQLException {
		Connection connection =

		ConnectionFactory.getConnection();
		Statement statement = connection.createStatement();
		ResultSet resultset = statement
				.executeQuery("select count(*) from inbox where toaddress='"
						+ to + "' and msgtype='T'");
		int count = resultset.getRow();
		return count;
	}
}
