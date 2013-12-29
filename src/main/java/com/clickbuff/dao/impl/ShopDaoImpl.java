package com.clickbuff.dao.impl;

import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import com.clickbuff.commons.dao.GenericJpaDao;
import com.clickbuff.dao.ShopDao;
import com.clickbuff.exceptions.FrameworkException;
import com.clickbuff.model.Shop;

@Repository
public class ShopDaoImpl extends GenericJpaDao<Shop, Integer> implements
		ShopDao {

	private static final Logger LOGGER = Logger.getLogger(ShopDaoImpl.class);

	public ShopDaoImpl() {

		super(Shop.class);

		LOGGER.debug("Intializing " + this.getClass().getName());

	}

	public boolean deleteShopById(int id) {

		Assert.notNull(id);

		Query query = getEntityManager().createNativeQuery("delete from shops where shop_id=?").setParameter(0, id);


		int effectedRows = query.executeUpdate();

		if (effectedRows == 1) {

			LOGGER.info("shop deleted Successfully");
			
			return true;
		}

		else if (effectedRows < 1) {
			throw new FrameworkException("ERR001", "Can not Delete Shop");
			
			
		} else {

			LOGGER.info("Something gone wrong error throwing exception");

			throw new FrameworkException("ERR001", "Can not Delete Shop");
		}
	}
	
	

}
