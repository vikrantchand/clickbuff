package com.clickbuff.dao.impl;

import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import com.clickbuff.commons.dao.GenericJpaDao;
import com.clickbuff.dao.CategoryDao;
import com.clickbuff.exceptions.FrameworkException;
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

	public Boolean deleteCategoryById(Integer id) {
		Assert.notNull(id);

		Query query = getEntityManager().createNativeQuery("delete from categories where category_id=?").setParameter(0, id);

		int effectedRows = query.executeUpdate();

		if (effectedRows == 1) {

			LOGGER.info("category deleted Successfully");
			
			return true;
		}

		else if (effectedRows < 1) {
			throw new FrameworkException("ERR001", "Can not Delete category");
			
			
		} else {

			LOGGER.info("Something gone wrong error throwing exception");

			throw new FrameworkException("ERR001", "Can not Delete category");
		}
	}

}
