package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userId;

	@OneToOne(mappedBy = "username")
	private Authorities username;

	private String password;
	private boolean enabled;

	@OneToOne(mappedBy = "user")
	private Customer customer;

	// Default Constructor
	public Users() {
		super();
	}

	// setters+getters
	

	public Authorities getUsername() {
		return username;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public void setUsername(Authorities username) {
		this.username = username;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@Override
	public String toString() {
		return "Users [userId=" + userId + ", username=" + username + ", password=" + password + ", enabled=" + enabled
				+ ", customer=" + customer + "]";
	}

	// toSrting method
	
	
}
