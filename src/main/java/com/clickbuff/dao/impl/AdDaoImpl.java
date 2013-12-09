package com.clickbuff.dao.impl;

import com.clickbuff.commons.dao.GenericJpaDao;
import com.clickbuff.dao.AdDao;
import com.clickbuff.model.Ad;

public class AdDaoImpl extends GenericJpaDao<Ad, Integer> implements AdDao {

	public AdDaoImpl() {
		super(Ad.class);
	}

}
