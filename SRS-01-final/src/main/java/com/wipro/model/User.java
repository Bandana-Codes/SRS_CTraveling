package com.wipro.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

@Entity

public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userID;
	
	private String username;
	private String  password;
	private String  emailID;
	
	private String  adhaarnumber;
	private String  mobilenumber;
	private String  dateofbirth;
	private String  address;
	
	private String otp;
	
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmailID() {
		return emailID;
	}
	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
	
	
	public String getAdharnumber() {
		return adhaarnumber;
	}
	public void setAdharnumber(String adharnumber) {
		this.adhaarnumber = adharnumber;
	}
	public String getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
	@Override
	public String toString() {
		return "User [userID=" + userID + ", username=" + username + ", password=" + password + ", emailID=" + emailID
				+ ", adharnumber=" + adhaarnumber + ", mobilenumber=" + mobilenumber + ", dateofbirth=" + dateofbirth
				+ ", address=" + address + ", otp=" + otp + "]";
	}
	
	 	 

}
