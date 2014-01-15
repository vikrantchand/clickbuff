package com.clickbuff.enums;

public enum UserAuthorityType {
	
		ROLE_ADMIN("ADMIN"), ROLE_CLIENT("CLIENT"), ROLE_USER("USER");
	 
		private String role;
	 
		private UserAuthorityType(String role) {
			this.role = role;
		}
	 
		public String getRole() {
			return role;
		}
	 

}
