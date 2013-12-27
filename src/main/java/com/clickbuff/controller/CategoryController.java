package com.clickbuff.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clickbuff.model.Category;
import com.clickbuff.model.UserDetail;
import com.clickbuff.service.CategoryServcie;

@Controller
@RequestMapping("/category")
public class CategoryController {
	@Autowired
	private CategoryServcie categoryServcie;
	private static final Logger LOGGER = Logger.getLogger(UserController.class);

	@RequestMapping(method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<Category> getAllUsers() {

		LOGGER.info("Calling UserService getAllCategory()");

		List<Category> categories = categoryServcie.getAllCategory();

		LOGGER.info("Returing List of all categories of size : " + categories.size());

		return categories;

	}

}
