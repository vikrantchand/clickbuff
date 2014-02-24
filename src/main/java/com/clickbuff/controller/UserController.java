package com.clickbuff.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clickbuff.constants.CBConstants;
import com.clickbuff.enums.UserAuthorityType;
import com.clickbuff.model.Authority;
import com.clickbuff.model.User;
import com.clickbuff.model.UserDetail;
import com.clickbuff.service.UserService;
import com.clickbuff.vo.OnlineUserVo;
import com.clickbuff.vo.UserSignUpResponseVo;
import com.clickbuff.vo.UserSignUpVo;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	


	private static final Logger LOGGER = Logger.getLogger(UserController.class);
	
	@RequestMapping(method = RequestMethod.GET, produces = CBConstants.CONTENT_TYPE)
	public 	@ResponseBody List<UserDetail> getAllUsers(){
		
		LOGGER.info("Calling UserService getAllUsers()");
		
		List<UserDetail> listofUsers=userService.getAllUsers();
		
		LOGGER.info("Returing List of all user of size : "+listofUsers.size());
				
		return listofUsers;
		
	}
	
	@RequestMapping(value="/{userId}",method=RequestMethod.GET)
	@ResponseBody
	public UserDetail getUser(@PathVariable("userId")Integer userId){
		
		LOGGER.info("Calling UserService getUserByUserName() with : "+userId);
		
		UserDetail userDetail=userService.getUserById(userId);
		
		LOGGER.info("Returing a sinigleuser : "+userDetail.toString());
				
		return userDetail;
	}
	
	@RequestMapping(value="/{userId}",method=RequestMethod.DELETE)
	@ResponseBody
	public void removeUserByUserName(@PathVariable("userId") Integer userId){
		
		LOGGER.info("Calling UserService removeUserByUserName(userName) with userName : "+userId);
		
		userService.removeUserById(userId);
		
		LOGGER.info("User Removed Successfully");
	}
	
	@RequestMapping(method=RequestMethod.POST ,consumes=CBConstants.CONTENT_TYPE,produces=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public UserSignUpResponseVo addUser(@RequestBody UserSignUpVo userSignUpVo){
		LOGGER.info("creating new user in database userDetail : "+userSignUpVo.toString());
		
		LOGGER.debug("performing user signup : "+userSignUpVo);
		UserDetail userDetail=new UserDetail();
		userDetail.setfName(userSignUpVo.getFirstName());
		userDetail.setlName(userSignUpVo.getLastName());
		userDetail.setEmail(userSignUpVo.getEmail());
		userDetail.setDob(userSignUpVo.getDob());
		User user=new User();
		Authority authority=new Authority();
		authority.setUserAuthority(UserAuthorityType.ROLE_USER);
		user.setAuthority(authority);
		user.setEnabled(true);
		user.setUserName(userSignUpVo.getEmail());
		user.setPassword(userSignUpVo.getPassword());
		userDetail.setUser(user);
		UserSignUpResponseVo u =userService.addUser(userDetail);
		
		LOGGER.info("User created successfully UserDetails : "+userDetail.toString());
		
		return u;
	}
	
	@RequestMapping(value="/{userId}", method=RequestMethod.PUT,produces=CBConstants.CONTENT_TYPE,consumes=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public UserDetail updateUser(@RequestBody UserDetail userDetail){
		
		LOGGER.info("updating new user in database userDetail : "+userDetail.toString());
		
		userDetail=userService.updateUser(userDetail);
		
		LOGGER.info("User updated successfully UserDetails : "+userDetail.toString());
		
		return userDetail;
	}
	
	@RequestMapping(value="/OnlineUsers", method=RequestMethod.GET,produces=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public List<OnlineUserVo> getOnlineUSers(){
		
		return userService.getOnlineUsers();
	}
	
}
