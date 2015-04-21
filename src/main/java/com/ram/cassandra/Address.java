package com.ram.cassandra;

import com.datastax.driver.mapping.annotations.UDT;

@UDT(keyspace = "complex", name = "address")
public class Address {
	private String street;
	private String city;
	private int zipCode;

	// private List<Phone> phones;

	public Address() {
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getZipCode() {
		return zipCode;
	}

	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}

	// public List<Phone> getPhones() {
	// return phones;
	// }
	//
	// public void setPhones(List<Phone> phones) {
	// this.phones = phones;
	// }
}