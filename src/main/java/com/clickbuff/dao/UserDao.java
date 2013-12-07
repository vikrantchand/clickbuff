package com.clickbuff.dao;

import com.clickbuff.commons.dao.GenericDao;
import com.clickbuff.model.UserDetail;

public interface UserDao extends GenericDao<UserDetail, Integer> {

	public boolean checkEmail(String email);
	
	public boolean checkUserName(String userName);
	
	public UserDetail loadUserByUserName(String userName);
	
	public UserDetail loadUserByEmail(String email);
	
	public void removeUserByUserUserName(String userName);
	
	public void blockUser(String userName);
	
	public void unBlockUser(String userName);
	
	
}
