package com.clickbuff.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@Entity
@JsonIgnoreProperties(ignoreUnknown=true)
@Table(name = "USERS")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "USER_ID")
	private Integer id;

	@Column(name = "USER_NAME")
	private String userName;
	
/*	@ManyToMany(mappedBy="Users",fetch=FetchType.LAZY)
	private Set<Shop> clickedShops;*/

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
	public Set<Shop> getClickedShops() {
		return clickedShops;
	}

	public void setClickedShops(Set<Shop> clickedShops) {
		this.clickedShops = clickedShops;
	*/

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
