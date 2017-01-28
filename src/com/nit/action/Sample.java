package com.nit.action;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Sample {

	private Matcher matcher;
	
	
	public static void main(String[] args) {
		
	 
		final String EMAIL_PATTERN = 
			"^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	 
		Pattern pattern = Pattern.compile(EMAIL_PATTERN);
	 
		/**
		 * Validate hex with regular expression
		 * 
		 * @param hex
		 *            hex for validation
		 * @return true valid hex, false invalid hex
		 */
	 
		Matcher matcher = pattern.matcher("hari@mail.com");
		
		String email = "";
		System.out.println(email.trim());
		System.out.println(matcher.matches());
	}

}
