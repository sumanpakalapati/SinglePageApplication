package com.ram.service;

import java.util.Date;

import org.joda.time.DateTime;

public class TripInfo {

	private String tripId;
	private String startDate;
	private String endDate;
	private String destinationCity;
	private String airPortCode;
	private String lineOfBusiness;
	
	

	public String getLineOfBusiness() {
		return lineOfBusiness;
	}

	public void setLineOfBusiness(String lineOfBusiness) {
		this.lineOfBusiness = lineOfBusiness;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getTripId() {
		return tripId;
	}

	public void setTripId(String tripId) {
		this.tripId = tripId;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setTripDates(int noOfDays) {
		java.util.Date juDate = new Date();
		DateTime dt = new DateTime(juDate);
		DateTime startDate = dt.plusDays(noOfDays);
		DateTime endDate = startDate.plusDays(3);

		this.startDate = startDate.toString();
		this.endDate = endDate.toString();

	}

	public String getEndDate() {
		return endDate;
	}

	public String getDestinationCity() {
		return destinationCity;
	}

	public void setDestinationCity(String destinationCity) {
		this.destinationCity = destinationCity;
	}

	public String getAirPortCode() {
		return airPortCode;
	}

	public void setAirPortCode(String airPortCode) {
		this.airPortCode = airPortCode;
	}

}
