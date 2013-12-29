package com.clickbuff.dao;

import com.clickbuff.commons.dao.GenericDao;
import com.clickbuff.model.Shop;

public interface ShopDao extends GenericDao<Shop, Integer> {
	
	public boolean deleteShopById(int id);

}
