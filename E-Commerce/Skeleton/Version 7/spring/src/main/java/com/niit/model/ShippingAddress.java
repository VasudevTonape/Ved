package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "shippingaddress")
public class ShippingAddress {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int shippingAddressId;
	private String partmentNumber;
	private String streetName;
	private String city;
	private String state;
	private String country;
	private String zipcode;

	@OneToOne(mappedBy = "shippingAddress")
	private Customer customer;

	// Default Constructor
	public ShippingAddress() {
		super();
	}

	// setters+getters
	public int getShippingAddressId() {
		return shippingAddressId;
	}

	public void setShippingAddressId(int shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}

	public String getPartmentNumber() {
		return partmentNumber;
	}

	public void setPartmentNumber(String partmentNumber) {
		this.partmentNumber = partmentNumber;
	}

	public String getStreetName() {
		return streetName;
	}

	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	// toSrting method
	@Override
	public String toString() {
		return "ShippingAddress [shippingAddressId=" + shippingAddressId + ", partmentNumber=" + partmentNumber
				+ ", streetName=" + streetName + ", city=" + city + ", state=" + state + ", country=" + country
				+ ", zipcode=" + zipcode + ", customer=" + customer + "]";
	}

}
