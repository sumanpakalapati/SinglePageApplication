package com.ram.client;

import org.springframework.web.client.RestTemplate;

import com.ram.service.TripsResponse;

public class TripsClient {

	public static void main(String[] args) {
	
		RestTemplate restTemplate = new RestTemplate();
		TripsResponse tripsResponse = restTemplate.getForObject("http://localhost:8080/SinglePageApplication/trips", TripsResponse.class);
		System.out.println("hi-----" +tripsResponse.getTripsInfos().size());
	}

}
