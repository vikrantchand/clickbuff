package com.clickbuff.service.impl;

import com.clickbuff.dao.CategoryDao;
import com.clickbuff.model.Category;
import com.clickbuff.service.CategoryServcie;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl
  implements CategoryServcie
{

  @Autowired
  private CategoryDao categoryDao;

  public List<Category> getAllCategory()
  {
    return this.categoryDao.findAll();
  }

  public Category getCategoryById(int id)
  {
    return null;
  }

  public Category addCategory(Category category)
  {
    return null;
  }

  public Boolean deleteCategoryById(int id)
  {
    return null;
  }
}