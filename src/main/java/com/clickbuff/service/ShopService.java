package com.clickbuff.service;

import java.util.List;

import com.clickbuff.model.Category;
import com.clickbuff.model.Shop;


public interface ShopService {
	
	  public  List<Shop> getAllShops();

	  public  Shop getShopById(int id);

	  public  Shop addShop(Shop shop);

	  public  Boolean deleteShopById(int id);

}
