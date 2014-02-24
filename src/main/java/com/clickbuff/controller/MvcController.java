package com.clickbuff.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.clickbuff.enums.UserAuthorityType;
import com.clickbuff.model.Authority;
import com.clickbuff.model.User;
import com.clickbuff.model.UserDetail;
import com.clickbuff.service.UserService;
import com.clickbuff.vo.UserSignUpVo;

@Controller
public class MvcController {
	
	@Autowired
	private UserService userService;
	
	private static final Logger LOGGER = Logger.getLogger(MvcController.class);
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String getIndexPage(){
		
		return "index";
	}
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String getIndexPage1(){
		
		return "index";
	}
	/*
	@RequestMapping(value="/doSignUp",method=RequestMethod.POST)
	public String doSignUp(UserSignUpVo userSignUpVo){
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
		UserDetail u =userService.addUser(userDetail);
		return "index";
	}*/
	

}
