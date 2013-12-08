package com.clickbuff.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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

	@Column(name = "SHOP_ADDRESS")
	private String address;

	@Column(name = "AVAILABLE_ITEMS")
	private String itemsAvailable;

	@Column(name = "CLICKS")
	private Integer clicks;

	@Column(name = "ADDED_DATE")
	private Date addedDate;

	@Column(name = "LAST_UPDATED")
	private Date lastUpdated;

	@ManyToOne
	@JoinColumn(name = "CATEGORY_ID")
	private Category category;

	public Integer getShopId() {
		return shopId;
	}

	public void setShopId(Integer shopId) {
		this.shopId = shopId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

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

	public Integer getClicks() {
		return clicks;
	}

	public void setClicks(Integer clicks) {
		this.clicks = clicks;
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

}
