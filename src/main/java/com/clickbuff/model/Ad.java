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
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "AD")
public class Ad {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "AD_ID")
	private Integer id;

	@OneToMany(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name = "AD_ID")
	private Set<AdImageName> images;

	@Column(name = "TITLE")
	private String Tiltle;
	
	@Column(name = "SMALL_DESCRIPTION")
	private StringBuilder summary;
	
	@Column(name = "DETAILED_DESCRIPTION")
	private StringBuilder details;
	
	@Column(name = "DATE_ADDED")
	private Date dateAdded;
	
	@Column(name = "DATE_LAST_UPDATED")
	private Date lastUpdated;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Set<AdImageName> getImages() {
		return images;
	}

	public void setImages(Set<AdImageName> images) {
		this.images = images;
	}

	public String getTiltle() {
		return Tiltle;
	}

	public void setTiltle(String tiltle) {
		Tiltle = tiltle;
	}

	public StringBuilder getSummary() {
		return summary;
	}

	public void setSummary(StringBuilder summary) {
		this.summary = summary;
	}

	public StringBuilder getDetails() {
		return details;
	}

	public void setDetails(StringBuilder details) {
		this.details = details;
	}

	public Date getDateAdded() {
		return dateAdded;
	}

	public void setDateAdded(Date dateAdded) {
		this.dateAdded = dateAdded;
	}

	public Date getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(Date lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

}
