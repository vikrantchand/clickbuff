package com.clickbuff.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.clickbuff.enums.UserAuthorityType;

@Entity
@Table(name = "AUTHORITIES")
public class Authority {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "AUTHORITY_ID")
	private Integer id;

	@Column(name = "AUTHORITY")
	private UserAuthorityType userAuthority;

	/**
	 * Default constructor
	 */
	public Authority() {
	}

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "USER_ID")
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the userAuthority
	 */
	public UserAuthorityType getUserAuthority() {
		return userAuthority;
	}

	/**
	 * @param userAuthority
	 *            the userAuthority to set
	 */
	public void setUserAuthority(UserAuthorityType userAuthority) {
		this.userAuthority = userAuthority;
	}

}