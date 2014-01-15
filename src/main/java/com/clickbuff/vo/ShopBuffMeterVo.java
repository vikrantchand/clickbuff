package com.clickbuff.vo;

public class ShopBuffMeterVo implements Comparable<ShopBuffMeterVo>{

	private String shopName;
	
	private int id;
	
	private int clicks;

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getClicks() {
		return clicks;
	}

	public void setClicks(int clicks) {
		this.clicks = clicks;
	}

	public int compareTo(ShopBuffMeterVo campareVo) {
		
		int clicks = ((ShopBuffMeterVo) campareVo).getClicks(); 
		 
		return this.clicks - clicks;
	}
	
	
}
