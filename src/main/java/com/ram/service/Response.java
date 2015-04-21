package com.ram.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Component;

@Component(value="response")
public class Response {

	public String currentDateStr;

	public Response() {
		super();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
		String currentDateString = dateFormat.format(new Date());
		System.out.println("Current date in ISO 8601: '" + currentDateString + "'");
		this.currentDateStr = currentDateString;
	}

	public String getCurrentDateStr() {
		return currentDateStr;
	}

	public void setCurrentDateStr(String currentDateStr) {
		this.currentDateStr = currentDateStr;
	}

}
