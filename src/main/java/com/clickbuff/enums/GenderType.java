package com.clickbuff.enums;

public enum GenderType {
	
	MALE("MALE"), FEMALE("FEMALE");
	
	private String gender;
	
	private GenderType(String gender) {
		this.gender = gender;
	}
	
	public String getGender() {
		return gender;
	}

}
