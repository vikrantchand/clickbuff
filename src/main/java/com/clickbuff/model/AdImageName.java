package com.clickbuff.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AD_IMAGE_NAMES")
public class AdImageName {
	
	@Column(name="IMAGE_NAME")
	private String imageName;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="IMAGE_ID")
	private Integer imageId;

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public Integer getImageId() {
		return imageId;
	}

	public void setImageId(Integer imageId) {
		this.imageId = imageId;
	}

}
