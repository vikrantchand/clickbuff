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
import com.clickbuff.vo.UserSignUpResponseVo;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Resource(name="sessionRegistry")
	private SessionRegistryImpl sessionRegistry;
	
	private static final Logger LOGGER = Logger.getLogger(UserServiceImpl.class);
	
	
	public List<UserDetail> getAllUsers() {

		LOGGER.debug("Calling UserDoa's findAll() method");
		
		return userDao.findAll();
	}

	public UserDetail getUserById(Integer id) {
		
		Assert.notNull(id);
		
		LOGGER.debug("Calling UserDao's findUserById(id) with id : "+id);
		
		return userDao.findById(id);
	}


	public UserDetail getUserByUserName(String userName) {
		
		Assert.notNull(userName);
		
		LOGGER.debug("Calling UserDao's findUserByEmail(userName) with userName : "+userName);
		
		return userDao.loadUserByUserName(userName);
	}

	public void removeUser(UserDetail userDetail) {

		Assert.notNull(userDetail);
		
		LOGGER.debug("Calling UserDao's delete(entity) with: "+userDetail.toString());
		
		try{
			
			userDao.delete(userDetail);
		}
		catch(Exception e){
			
			LOGGER.debug("Exception Occurs throwing CustomException "+e.getMessage());
			
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
		
		LOGGER.debug("Calling update Method with UserDetails"+userDetail.toString() );
		
		try{
			
			updatedUser=userDao.update(userDetail);
		}
		catch(Exception e){
			
			LOGGER.debug("Exception Occurs throwing CustomException "+e.getMessage());
			
			/*throw new CustomException(e.getMessage(),e);*/
		}
		
		return updatedUser;
	}
	@Transactional
	public UserSignUpResponseVo addUser(UserDetail userDetail) {
		
		Assert.notNull(userDetail);
		
		UserSignUpResponseVo response=new UserSignUpResponseVo();
		
		LOGGER.debug("Calling save Method with UserDetails"+userDetail.toString() );
		
		try{
			if(userDao.checkEmail(userDetail.getEmail())){
			userDao.save(userDetail);
			}
			else{
				response.setEmail(userDetail.getEmail());
				response.setMsg("User with this mail already registered");
			}

		}
		catch(Exception e){
			e.printStackTrace();
			LOGGER.debug("Exception Occurs throwing CustomException "+e.getMessage());
			
			response.setEmail(userDetail.getEmail());
			response.setMsg(e.getMessage());
		}
		
		return response;
		
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
