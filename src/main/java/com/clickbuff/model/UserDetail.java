package com.clickbuff.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.clickbuff.enums.GenderType;

@Entity
@Table(name="USER_DETAILS")
public class UserDetail {
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="USER_DETAIL_ID")
    private Integer id;
	
	@Embedded
	@CollectionTable(name="USER_ADDRESS")
	private UserAddress userAddress;
	
	@Column(name="FAV_PASS_TIME")
	private String favPassTime;
	
	@OneToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name = "USER_ID")
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Column(name="OCCUPATION")
	private String occupation;
	
	@Column(name="HOBBY")
	private String hobby;
	
	@Column(name="ALT_MOBILE")
	private String altMobileNo;
	
	@Column(name="ALT_EMAIL")
	private String altEmail;
	
	@Column(name="EMAIL",unique=true)
	private String email;
	
	@Column(name="MOBILE")
	private String mobileNo;
	
	@Column(name="BIRTH_DATE")
	private Date dob;
	
	@Column(name="FIRST_NAME")
	private String fName;
	
	@Column(name="LAST_NAME")
	private String lName;
	
	@Column(name="GENDER")
	private GenderType gender;
	
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	/**
	 * @return the dob
	 */
	public Date getDob() {
		return dob;
	}
	/**
	 * @param dob the dob to set
	 */
	public void setDob(Date dob) {
		this.dob = dob;
	}
	/**
	 * @return the userAddress
	 */
	public UserAddress getUserAddress() {
		return userAddress;
	}
	/**
	 * @param userAddress the userAddress to set
	 */
	public void setUserAddress(UserAddress userAddress) {
		this.userAddress = userAddress;
	}
	/**
	 * @return the mobileNo
	 */
	public String getMobileNo() {
		return mobileNo;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @param mobileNo the mobileNo to set
	 */
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the altEmail
	 */
	public String getAltEmail() {
		return altEmail;
	}
	/**
	 * @param altEmail the altEmail to set
	 */
	public void setAltEmail(String altEmail) {
		this.altEmail = altEmail;
	}
	/**
	 * @return the altMobileNo
	 */
	public String getAltMobileNo() {
		return altMobileNo;
	}
	/**
	 * @param altMobileNo the altMobileNo to set
	 */
	public void setAltMobileNo(String altMobileNo) {
		this.altMobileNo = altMobileNo;
	}
	/**
	 * @return the hobby
	 */
	public String getHobby() {
		return hobby;
	}
	/**
	 * @param hobby the hobby to set
	 */
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	/**
	 * @return the occupation
	 */
	public String getOccupation() {
		return occupation;
	}
	/**
	 * @param occupation the occupation to set
	 */
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	/**
	 * @return the favPassTime
	 */
	public String getFavPassTime() {
		return favPassTime;
	}
	/**
	 * @param favPassTime the favPassTime to set
	 */
	public void setFavPassTime(String favPassTime) {
		this.favPassTime = favPassTime;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public GenderType getGender() {
		return gender;
	}
	public void setGender(GenderType gender) {
		this.gender = gender;
	}
	
	
	

}
