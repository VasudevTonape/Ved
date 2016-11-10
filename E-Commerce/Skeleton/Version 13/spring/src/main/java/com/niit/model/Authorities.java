package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "authorities")
public class Authorities {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int authorityId;

	private String username;

	private String authorities;

	// Default Constructor
	public Authorities() {
		super();
	}

	// setters+getter
	public int getAuthorityId() {
		return authorityId;
	}

	public void setAuthorityId(int authorityId) {
		this.authorityId = authorityId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAuthorities() {
		return authorities;
	}

	public void setAuthorities(String authorities) {
		this.authorities = authorities;
	}

	// toSrting method
	@Override
	public String toString() {
		return "Authorities [authorityId=" + authorityId + ", username=" + username + ", authorities=" + authorities
				+ "]";
	}

}
