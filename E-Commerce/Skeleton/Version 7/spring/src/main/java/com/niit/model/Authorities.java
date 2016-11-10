package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "authorities")
public class Authorities {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int authorityId;

	@OneToOne
	@JoinColumn(name = "username")
	private Users username;

	private String authority;

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

	public Users getUsername() {
		return username;
	}

	public void setUsername(Users username) {
		this.username = username;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	// toSrting method
	@Override
	public String toString() {
		return "Authorities [authorityId=" + authorityId + ", username=" + username + ", authority=" + authority + "]";
	}

}
