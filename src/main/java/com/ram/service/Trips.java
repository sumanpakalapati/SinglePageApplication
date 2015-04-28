package com.ram.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.ws.rs.core.MediaType;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/trips")
public class Trips {

	public static String[] airPortCode = { "SFO", "HYD", "PHX", "LHR", "KPP", "LAX", "JFK", "NYC", "ABC", "XYZ",
	                "NNN" };
	public static String[] lineOfBusiness = {"HOTEL", "AIR","PACKAGE","CAR","CRUISE"};

	@RequestMapping(method = RequestMethod.GET, produces=MediaType.APPLICATION_JSON)
	public @ResponseBody List<TripInfo> getTrips() {
		System.out.println("Request in Trips controller");
		List<TripInfo> trips = new ArrayList<TripInfo>();
		for (int i = 0; i < 10; i++) {
			trips.add(createNewTrip(i+1));
		}

		return trips;
	}

	public TripInfo createNewTrip(int tripId) {
		Random randomGenerator = new Random();
		int randomInt = randomGenerator.nextInt(10);
		int lobRandomInt = randomGenerator.nextInt(5);
		TripInfo tripInfo = new TripInfo();
		tripInfo.setTripId("Trip-"+tripId);
		tripInfo.setAirPortCode(airPortCode[randomInt]);
		tripInfo.setTripDates(randomInt);
		tripInfo.setLineOfBusiness(lineOfBusiness[lobRandomInt]);
		return tripInfo;
	}
}