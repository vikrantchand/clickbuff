package com.clickbuff.enums;

public enum UserAuthorityType {
	
		ADMIN("ADMIN"), CLIENT("CLIENT"), USER("USER");
	 
		private String role;
	 
		private UserAuthorityType(String role) {
			this.role = role;
		}
	 
		public String getRole() {
			return role;
		}
	 

}
