package com.votersystem.dto;

public class VoterEntity {
	private int voterId;
	private int userId;
	private int gender;
	private long aadhar;
	private String dob;
	private String state;
	private String city;
	private String district;
	private String taluka;
	private String village;
	private int postal_code;
	
	
	public int getVoterId() {
		return voterId;
	}
	public void setVoterId(int voterId) {
		this.voterId = voterId;
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public long getAadhar() {
		return aadhar;
	}
	public void setAadhar(long aadhar) {
		this.aadhar = aadhar;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getTaluka() {
		return taluka;
	}
	public void setTaluka(String taluka) {
		this.taluka = taluka;
	}
	public String getVillage() {
		return village;
	}
	public void setVillage(String village) {
		this.village = village;
	}
	public int getPostal_code() {
		return postal_code;
	}
	public void setPostal_code(int postal_code) {
		this.postal_code = postal_code;
	}
	

}
