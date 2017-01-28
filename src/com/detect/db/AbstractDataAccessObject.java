package com.detect.db;

public class AbstractDataAccessObject {
	public AbstractDataAccessObject() {

		new ConnectionFactory().getConnection();
	}

}
