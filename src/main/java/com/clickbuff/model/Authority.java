package com.clickbuff.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.clickbuff.enums.UserAuthority;

@Entity
@Table(name = "AUTHORITIES")
public class Authority {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "AUTHORITY_ID")
	private Integer id;

	@Column(name = "AUTHORITY")
	private UserAuthority userAuthority;
	
	@OneToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="USER_ID")
	private User user;

	/**
	 * Default constructor
	 */
	public Authority() {
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
	public UserAuthority getUserAuthority() {
		return userAuthority;
	}

	/**
	 * @param userAuthority
	 *            the userAuthority to set
	 */
	public void setUserAuthority(UserAuthority userAuthority) {
		this.userAuthority = userAuthority;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}

}
