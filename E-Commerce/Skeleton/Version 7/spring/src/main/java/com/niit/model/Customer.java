package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cutomerId;
	private String cutomerName;
	private String customerEmail;
	private String customerPhone;

	@OneToOne
	@JoinColumn(name = "userId")
	private Users user;

	@OneToOne
	@JoinColumn(name = "billingAddressId")
	private BillingAddress billingAddress;

	@OneToOne
	@JoinColumn(name = "shippingAddressId")
	private ShippingAddress shippingAddress;

	// Default Constructor
	public Customer() {
		super();
	}

	// setter+getters
	public int getCutomerId() {
		return cutomerId;
	}

	public void setCutomerId(int cutomerId) {
		this.cutomerId = cutomerId;
	}

	public String getCutomerName() {
		return cutomerName;
	}

	public void setCutomerName(String cutomerName) {
		this.cutomerName = cutomerName;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public BillingAddress getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	// toSrting method
	@Override
	public String toString() {
		return "Customer [cutomerId=" + cutomerId + ", cutomerName=" + cutomerName + ", customerEmail=" + customerEmail
				+ ", customerPhone=" + customerPhone + ", user=" + user + ", billingAddress=" + billingAddress
				+ ", shippingAddress=" + shippingAddress + "]";
	}

}
