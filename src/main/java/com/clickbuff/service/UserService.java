package com.clickbuff.service;

import java.util.List;

import com.clickbuff.model.UserDetail;


public interface UserService {

	public List<UserDetail> getAllUsers();
	
	public UserDetail getUserById(Integer id);
	
	public UserDetail getUserByEmail(String email);
	
	public UserDetail getUserByUserName(String userName);
	
	public void removeUser(UserDetail userDetail);
	
	public void removeUserById(Integer id);
	
	public void removeUserByUserName(String userName);
	
	public UserDetail updateUser(UserDetail userDetail);
	
	public UserDetail addUser(UserDetail userDetail);
	
}
