package com.clickbuff.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "SHOPS")
public class Shop {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "SHOP_ID")
	private Integer shopId;

	@Column(name = "NAME_OF_SHOP")
	private String name;

	@Column(name = "OWNER_NAME")
	private String ownerName;
	
	@Column(name="Contact_Number")
	private String contactNumber;

	@Column(name = "SHOP_ADDRESS")
	private String address;

	@Column(name = "AVAILABLE_ITEMS")
	private String itemsAvailable;

	@ManyToMany(cascade = {CascadeType.ALL} ,fetch=FetchType.EAGER)
    @JoinTable(name="User_Clicks", 
                joinColumns={@JoinColumn(name="SHOP_ID")}, 
                inverseJoinColumns={@JoinColumn(name="USER_NAME")})
	private Set<User> Users;

	@Column(name = "ADDED_DATE")
	private Date addedDate;

	@Column(name = "LAST_UPDATED")
	private Date lastUpdated;
	
	@Column(name = "CATEGORY_ID")
	private Integer categoryId;

/*	@ManyToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name = "CATEGORY_ID")
	private Category category;*/
	
	@OneToMany(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name = "SHOP_ID")
	private Set<ShopImageName> images;

	public Integer getShopId() {
		return shopId;
	}

	public Set<ShopImageName> getImages() {
		return images;
	}

	public void setImages(Set<ShopImageName> images) {
		this.images = images;
	}

	public void setShopId(Integer shopId) {
		this.shopId = shopId;
	}

/*	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}*/

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getItemsAvailable() {
		return itemsAvailable;
	}

	public void setItemsAvailable(String itemsAvailable) {
		this.itemsAvailable = itemsAvailable;
	}

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

	public Date getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(Date lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public Set<User> getUsers() {
		return Users;
	}

	public void setUsers(Set<User> users) {
		Users = users;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

}

/*
<authentication-manager>
<authentication-provider>
        <jdbc-user-service data-source-ref="dataSource"
                users-by-username-query="select USER_NAME,PASSWORD, ENABLED from users where USER_NAME=?"
                authorities-by-username-query="select u.username, ur.AUTHORITY from users u, authorities ur        
                where u.USER_ID = ur.USER_ID and u.USERNAME =?  " />
</authentication-provider>
</authentication-manager>*/