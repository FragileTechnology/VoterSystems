package com.votersystem.dto;

public class UserEntity {
	
	private int userId;
	private String name;
	private String email;
	private long contact;
	private String password;
	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public long getContact()
	{
		return contact;
	}
	
	public void setContact(long contact) {
		this.contact = contact;
	}
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
