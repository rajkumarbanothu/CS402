package com.nit.core;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServlet;

import com.detect.db.ConnectionFactory;
import com.nit.action.FileDemo;

public class FileCore extends HttpServlet{
	
	
	FileDemo demo=new FileDemo();
	
	public FileCore() {
		ConnectionFactory.getConnection();
	}
	
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	private String validatePersistentThreat(String to) throws Exception 
	{
	try {
	      Class<?> c = demo.getClass();
	      Method m = c.getDeclaredMethod("m");
	       m.setAccessible(true); // solution
	      Object o = m.invoke(demo); // IllegalAccessException

	      // production code should handle these exceptions more gracefully
	    } catch (NoSuchMethodException x11) {
	      x11.printStackTrace();
	    } catch (InvocationTargetException x1) {
	      x1.printStackTrace();
	    } catch (IllegalAccessException x) {
	      x.printStackTrace();
	    }
	  return to;
	
	
	
	}}
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	

