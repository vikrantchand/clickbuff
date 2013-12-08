package com.clickbuff.dao.impl;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.clickbuff.commons.dao.GenericJpaDao;
import com.clickbuff.dao.ShopDao;
import com.clickbuff.model.Shop;

@Repository
public class ShopDaoImpl extends GenericJpaDao<Shop, Integer> implements
		ShopDao {

	private static final Logger LOGGER = Logger.getLogger(ShopDaoImpl.class);

	public ShopDaoImpl() {

		super(Shop.class);

		LOGGER.debug("Intializing " + this.getClass().getName());

	}

}
