package com.dto;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Register")
public class RegisterLogin {
	private String uid;
	private String pass;
	private String email;
	private int age;
	private String contact;
	private String city;
	private String state;
	private String pincode;

	public RegisterLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RegisterLogin(String uid, String pass, String email, int age, String contact, String city, String state,
			String pincode) {
		super();
		this.uid = uid;
		this.pass = pass;
		this.email = email;
		this.age = age;
		this.contact = contact;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
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

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
}
