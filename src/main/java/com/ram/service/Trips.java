package com.ram.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.ws.rs.core.MediaType;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/trips")
public class Trips {

	public static String[] airPortCode = { "SFO", "HYD", "PHX", "LHR", "KPP", "LAX", "JFK", "NYC", "ABC", "XYZ",
	                "NNN" };
	public static String[] lineOfBusiness = {"HOTEL", "AIR","PACKAGE","CAR","CRUISE"};

	@RequestMapping(method = RequestMethod.POST, produces=MediaType.APPLICATION_JSON)
	public @ResponseBody TripsResponse getTrips(@RequestParam(value ="token", required=true) String token, @RequestBody List<String> cardNumbers) {
		System.out.println("Request in Trips controller"  + cardNumbers.toString());
		System.out.println("Token->"+token);
		TripsResponse tripsResponse = new TripsResponse();
		List<TripInfo> trips = new ArrayList<TripInfo>(); 
		for (int i = 0; i < 10; i++) {
			trips.add(createNewTrip(i+1));
		}
		tripsResponse.setTripsInfos(trips);
		return tripsResponse;
	}

	   @RequestMapping(method = RequestMethod.GET, produces=MediaType.APPLICATION_JSON)
	    public @ResponseBody TripsResponse getTripsGET() {

	        TripsResponse tripsResponse = new TripsResponse();
	        List<TripInfo> trips = new ArrayList<TripInfo>(); 
	        for (int i = 0; i < 10; i++) {
	            trips.add(createNewTrip(i+1));
	        }
	        tripsResponse.setTripsInfos(trips);
	        return tripsResponse;
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
