package com.clickbuff.enums;

public enum UserAuthority {
	
		ADMIN("ADMIN"), CLIENT("CLIENT"), USER("USER");
	 
		private String role;
	 
		private UserAuthority(String role) {
			this.role = role;
		}
	 
		public String getRole() {
			return role;
		}
	 

}
