package com.clickbuff.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clickbuff.constants.CBConstants;
import com.clickbuff.model.Category;
import com.clickbuff.service.CategoryServcie;

@Controller
@RequestMapping("/category")
public class CategoryController {
	@Autowired
	private CategoryServcie categoryServcie;
	private static final Logger LOGGER = Logger.getLogger(UserController.class);

	@RequestMapping(method = RequestMethod.GET, produces = CBConstants.CONTENT_TYPE)
	@ResponseBody
	public List<Category> getAllUsers() {

		LOGGER.info("Calling UserService getAllCategory()");

		List<Category> categories = categoryServcie.getAllCategory();

		LOGGER.info("Returing List of all categories of size : " + categories.size());

		return categories;

	}
	
	@RequestMapping(method = RequestMethod.POST, produces = CBConstants.CONTENT_TYPE,consumes=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public Category addCategory(@RequestBody Category category) {

		return categoryServcie.addCategory(category);
		

	}
	
	@RequestMapping(value="{categoryId}",method = RequestMethod.PUT, produces = CBConstants.CONTENT_TYPE,consumes=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public Category updateCategory(@RequestBody Category category, @PathVariable("categoryId") int categoryId) {
		return categoryServcie.updateCategory(category);
		

	}
	
	@RequestMapping(value="{categoryId}",method = RequestMethod.DELETE)
	@ResponseBody
	public void deleteCategory(@PathVariable("categoryId") int categoryId) {

		 categoryServcie.deleteCategoryById(categoryId);
		

	}
	
	@RequestMapping(value="{categoryId}",method = RequestMethod.GET ,produces=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public Category findCategory(@PathVariable("categoryId") int categoryId) {

		 return categoryServcie.getCategoryById(categoryId);
		

	}

}
