package com.clickbuff.service.impl;

import com.clickbuff.dao.CategoryDao;
import com.clickbuff.model.Category;
import com.clickbuff.service.CategoryServcie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CategoryServiceImpl implements CategoryServcie {

	@Autowired
	private CategoryDao categoryDao;

	public List<Category> getAllCategory() {
		return categoryDao.findAll();
	}

	public Category getCategoryById(int id) {
		return categoryDao.findById(id);
	}

	@Transactional
	public Category addCategory(Category category) {
		return categoryDao.save(category);
	}

	@Transactional
	public Boolean deleteCategoryById(int id) {
		return categoryDao.deleteCategoryById(id);
	}

	@Transactional
	public Category updateCategory(Category category) {
		return categoryDao.update(category);
	}

}