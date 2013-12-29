package com.clickbuff.service;

import java.util.List;

import com.clickbuff.model.Ad;


public interface AdService {
	
	  public  List<Ad> getAllAds();

	  public  Ad getAdById(int id);

	  public  Ad addAd(Ad ad);

	  public  Boolean deleteAdById(int id);
	  
	  public  void delete(Ad ad);
	  
	  public Ad updateAd(Ad ad);
	  
}
