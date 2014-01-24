package com.clickbuff.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import com.clickbuff.dao.UserDao;
import com.clickbuff.model.UserDetail;
import com.clickbuff.service.UserService;
import com.clickbuff.vo.OnlineUserVo;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Resource(name="sessionRegistry")
	private SessionRegistryImpl sessionRegistry;
	
	private static final Logger LOGGER = Logger.getLogger(UserServiceImpl.class);
	
	
	public List<UserDetail> getAllUsers() {

		LOGGER.info("Calling UserDoa's findAll() method");
		
		return userDao.findAll();
	}

	public UserDetail getUserById(Integer id) {
		
		Assert.notNull(id);
		
		LOGGER.info("Calling UserDao's findUserById(id) with id : "+id);
		
		return userDao.findById(id);
	}

	/*public UserDetail getUserByEmail(String email) {
		
		Assert.notNull(email);
		
		LOGGER.info("Calling UserDao's findUserByEmail(email) with email : "+email);
		
		return userDao.loadUserByEmail(email);
	}*/

	public UserDetail getUserByUserName(String userName) {
		
		Assert.notNull(userName);
		
		LOGGER.info("Calling UserDao's findUserByEmail(userName) with userName : "+userName);
		
		return userDao.loadUserByUserName(userName);
	}

	public void removeUser(UserDetail userDetail) {

		Assert.notNull(userDetail);
		
		LOGGER.info("Calling UserDao's delete(entity) with: "+userDetail.toString());
		
		try{
			
			userDao.delete(userDetail);
		}
		catch(Exception e){
			
			LOGGER.info("Exception Occurs throwing CustomException "+e.getMessage());
			
			/*throw new CustomException(e.getMessage(),e);*/
			
		}
			
	}

	public void removeUserById(Integer id) {
		// TODO Auto-generated method stub

	}

	public void removeUserByUserName(String userName) {
		// TODO Auto-generated method stub

	}

	public UserDetail updateUser(UserDetail userDetail) {
		
		Assert.notNull(userDetail);
		
		UserDetail updatedUser=null;
		
		LOGGER.info("Calling update Method with UserDetails"+userDetail.toString() );
		
		try{
			
			updatedUser=userDao.update(userDetail);
		}
		catch(Exception e){
			
			LOGGER.info("Exception Occurs throwing CustomException "+e.getMessage());
			
			/*throw new CustomException(e.getMessage(),e);*/
		}
		
		return updatedUser;
	}
	@Transactional
	public UserDetail addUser(UserDetail userDetail) {
		
		Assert.notNull(userDetail);
		
		UserDetail addedUser=null;
		
		LOGGER.info("Calling save Method with UserDetails"+userDetail.toString() );
		
		try{
			
			addedUser=userDao.save(userDetail);
		}
		catch(Exception e){
			
			LOGGER.info("Exception Occurs throwing CustomException "+e.getMessage());
			
			/*throw new CustomException(e.getMessage(),e);*/
		}
		
		return addedUser;
		
	}

	public UserDetail getUserByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<OnlineUserVo> getOnlineUsers() {
		
		List<Object> list=sessionRegistry.getAllPrincipals();
		
		List<OnlineUserVo> onlineUsers=new ArrayList<OnlineUserVo>();
		
		for (Object object : list) {
			String userName=null;
			User user=null;
			if(object instanceof User){
			user=(User)object;
			}
			if(!user.equals(null)){
			userName=user.getUsername();
			}
			if(!userName.equals(null)){
				UserDetail userDetail=userDao.loadUserByUserName(userName);
				OnlineUserVo onlineUserVo=new OnlineUserVo();
				onlineUserVo.setName(userDetail.getfName());
				onlineUserVo.setUserId(userDetail.getUser().getAuthority().getUser().getId());
				onlineUserVo.setUserName(userDetail.getUser().getAuthority().getUser().getUserName());
				onlineUsers.add(onlineUserVo);
			}
		}
	
		return onlineUsers;
	}

}
