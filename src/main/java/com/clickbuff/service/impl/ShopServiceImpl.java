package com.clickbuff.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jca.context.SpringContextResourceAdapter;
import org.springframework.orm.hibernate3.SpringSessionContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	public Shop getShopById(int id) {

		return shopDao.findById(id);
	}

	@Transactional
	public Shop addShop(Shop shop) {
		return shopDao.save(shop);
	}

	@Transactional
	public Boolean deleteShopById(int id) {
		return shopDao.deleteShopById(id);
	}

	@Transactional
	public void delete(Shop shop) {
		shopDao.delete(shop);
	}

	@Transactional
	public Shop updateShop(Shop shop) {
		return shopDao.update(shop);
	}

	public int increaseClickCount(int shopId) {
		if (SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal() instanceof User) {
		
			User user = (User) SecurityContextHolder.getContext()
					.getAuthentication().getPrincipal();
			shopDao.increaseClickByOne(shopId, user.getUsername());
		}
		else{
			
		}
		return 0;
	}

}
