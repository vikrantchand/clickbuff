package com.clickbuff.dao.impl;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.clickbuff.commons.dao.GenericJpaDao;
import com.clickbuff.dao.CategoryDao;
import com.clickbuff.model.Category;

@Repository
public class CategoryDaoImpl extends GenericJpaDao<Category, Integer> implements
		CategoryDao {

	private static final Logger LOGGER = Logger
			.getLogger(CategoryDaoImpl.class);

	public CategoryDaoImpl() {

		super(Category.class);

		LOGGER.debug("Intializing " + this.getClass().getName());
	}

}
