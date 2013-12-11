package com.clickbuff.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnore;

@Entity
@Table(name = "USERS")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "USER_ID")
	private Integer id;

	@Column(name = "USER_NAME")
	private String userName;

	@Column(name = "ENABLED")
	private boolean isEnabled;

/*	@JsonIgnore
	@OneToOne(mappedBy = "user")
	private Authority authority;*/

	@Column(name = "PASSWORD")
	private String password;

	public Integer getId() {
		return id;
	}

/*	public Authority getAuthority() {
		return authority;
	}

	public void setAuthority(Authority authority) {
		this.authority = authority;
	}*/

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
