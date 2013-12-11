package com.clickbuff.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clickbuff.model.UserDetail;
import com.clickbuff.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;

	private static final Logger LOGGER = Logger.getLogger(UserController.class);
	
	@RequestMapping(method = RequestMethod.GET, produces = "application/json")
	@ResponseBody	
	public List<UserDetail> getAllUsers(){
		
		LOGGER.info("Calling UserService getAllUsers()");
		
		List<UserDetail> listofUsers=userService.getAllUsers();
		
		LOGGER.info("Returing List of all user of size : "+listofUsers.size());
				
		return listofUsers;
		
	}
	
	@RequestMapping(value="/{userName}",method=RequestMethod.GET)
	public UserDetail getUser(String userName){
		
		LOGGER.info("Calling UserService getUserByUserName() with : "+userName);
		
		UserDetail userDetail=userService.getUserByUserName(userName);
		
		LOGGER.info("Returing a sinigleuser : "+userDetail.toString());
				
		return userDetail;
	}
	
	@RequestMapping(value="/{userName}",method=RequestMethod.DELETE)
	public void removeUserByUserName(@PathVariable("userName") String userName){
		
		LOGGER.info("Calling UserService removeUserByUserName(userName) with userName : "+userName);
		
		userService.removeUserByUserName(userName);
		
		LOGGER.info("User Removed Successfully");
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public void addUser(UserDetail userDetail){
		
		LOGGER.info("creating new user in database userDetail : "+userDetail.toString());
		
		userDetail=userService.addUser(userDetail);
		
		LOGGER.info("User created successfully UserDetails : "+userDetail.toString());
	}
	
	@RequestMapping(value="/{userName}", method=RequestMethod.PUT)
	public void updateUser(UserDetail userDetail){
		
		LOGGER.info("updating new user in database userDetail : "+userDetail.toString());
		
		userDetail=userService.updateUser(userDetail);
		
		LOGGER.info("User updated successfully UserDetails : "+userDetail.toString());
	}
	
}
