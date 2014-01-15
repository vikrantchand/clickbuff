package com.clickbuff.service;

import java.util.List;
import java.util.Set;

import com.clickbuff.model.Shop;
import com.clickbuff.vo.ShopBuffMeterVo;


public interface ShopService {
	
	  public  List<Shop> getAllShops();

	  public  Shop getShopById(int id);

	  public  Shop addShop(Shop shop);

	  public  Boolean deleteShopById(int id);
	  
	  public  void delete(Shop shop);
	  
	  public Shop updateShop(Shop shop);
	  
	  public int increaseClickCount(int shopId);
	  
	  public Set<ShopBuffMeterVo> getBuffMeter();
	  
}
