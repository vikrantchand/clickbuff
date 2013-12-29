package com.clickbuff.service;

import com.clickbuff.model.Category;
import java.util.List;

public abstract interface CategoryServcie
{
  public  List<Category> getAllCategory();

  public  Category getCategoryById(int paramInt);

  public  Category addCategory(Category paramCategory);

  public  Boolean deleteCategoryById(int paramInt);
  
  public Category updateCategory(Category category);
}