package com.clickbuff.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name = "USERS")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "USER_ID")
	private Integer id;

	@Column(name = "USER_NAME",unique=true)
	private String userName;

	@JsonIgnore
	@ManyToMany(mappedBy = "Users", fetch = FetchType.EAGER)
	private Set<Shop> clickedShops;

	@JsonIgnore
	@Column(name = "ENABLED")
	private boolean isEnabled;
	
	@OneToOne(mappedBy="user",fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	private Authority authority;

	@OneToOne(mappedBy="user",fetch=FetchType.EAGER)
	private UserDetail userDetail;

	@JsonIgnore
	@Column(name = "PASSWORD")
	private String password;

	public Integer getId() {
		return id;
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

	@JsonIgnore
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@JsonIgnore
	public boolean isEnabled() {
		return isEnabled;
	}

	public void setEnabled(boolean isEnabled) {
		this.isEnabled = isEnabled;
	}

	@JsonIgnore
	public Set<Shop> getClickedShops() {
		return clickedShops;
	}

	@JsonIgnore
	public void setClickedShops(Set<Shop> clickedShops) {
		this.clickedShops = clickedShops;
	}

	/*
	 * For Future use If required
	 * 
	 * @OneToMany(mappedBy = "sender") private List<Message> sentMsgs;
	 * 
	 * @OneToMany(mappedBy = "receiver") private List<Message> receivedMsgs;
	 * 
	 * public List<Message> getSentMsgs() { return sentMsgs; }
	 * 
	 * public void setSentMsgs(List<Message> sentMsgs) { this.sentMsgs =
	 * sentMsgs; }
	 * 
	 * public List<Message> getReceivedMsgs() { return receivedMsgs; }
	 * 
	 * public void setReceivedMsgs(List<Message> receivedMsgs) {
	 * this.receivedMsgs = receivedMsgs; }
	 */

}
