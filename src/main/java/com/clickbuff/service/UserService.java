package com.clickbuff.service;

import java.util.List;

import com.clickbuff.model.UserDetail;
import com.clickbuff.vo.OnlineUserVo;
import com.clickbuff.vo.UserSignUpResponseVo;


public interface UserService {

	public List<UserDetail> getAllUsers();
	
	public UserDetail getUserById(Integer id);
	
	public UserDetail getUserByEmail(String email);
	
	public UserDetail getUserByUserName(String userName);
	
	public void removeUser(UserDetail userDetail);
	
	public void removeUserById(Integer id);
	
	public void removeUserByUserName(String userName);
	
	public UserDetail updateUser(UserDetail userDetail);
	
	public List<OnlineUserVo> getOnlineUsers();
	
	public UserSignUpResponseVo addUser(UserDetail userDetail);
	
}
