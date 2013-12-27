package com.clickbuff.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clickbuff.dao.ShopDao;
import com.clickbuff.model.Category;
import com.clickbuff.model.Shop;
import com.clickbuff.service.ShopService;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopDao shopDao;
	public List<Shop> getAllShops() {
		
		return shopDao.findAll();
	}

	public Shop  getShopById(int id) {
		
		return shopDao.findById(id);
	}

	public Shop addShop(Shop shop) {
		return shopDao.save(shop);
	}

	public Boolean deleteShopById(int id) {
		return null;
	}

}
