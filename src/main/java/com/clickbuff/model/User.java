package com.clickbuff.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name = "USERS")
public class User {

	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="USER_ID")
    private Integer id;
	
	@Column(name = "USER_NAME")
	private String userName;
	
	@Column(name = "ENABLED")
	private boolean isEnabled;

	@OneToOne(mappedBy="user",cascade=CascadeType.ALL)
	private Authority authority;

	@Column(name = "PASSWORD")
	private String password;
	

	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public Authority getAuthority() {
		return authority;
	}

	public void setAuthority(Authority authority) {
		this.authority = authority;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return isEnabled;
	}

	public void setEnabled(boolean isEnabled) {
		this.isEnabled = isEnabled;
	}

}
