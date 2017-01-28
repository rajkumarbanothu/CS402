package com.detect.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionFactory {

	private static Connection mCon;
	private static Properties mProps;

	public static Properties getProperties() {
		return mProps;
	}

	public void setProperties(Properties aProps) {
		mProps = aProps;
	}

	public static Connection getConnection() {
		try {
			Properties aProps = getProperties();
			Class.forName(aProps.getProperty("driver"));
			mCon = DriverManager.getConnection(aProps.getProperty("url"),
					aProps.getProperty("duser"), aProps.getProperty("dpass"));
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} catch (SQLException se) {
			se.printStackTrace();
		}
		return mCon;
	}

}
