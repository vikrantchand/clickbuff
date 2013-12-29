package com.clickbuff.dao.impl;

import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import com.clickbuff.commons.dao.GenericJpaDao;
import com.clickbuff.dao.UserDao;
import com.clickbuff.exceptions.FrameworkException;
import com.clickbuff.model.UserDetail;

@Repository
public class UserDaoImpl extends GenericJpaDao<UserDetail, Integer> implements UserDao {
	
	private static final Logger LOGGER = Logger.getLogger(UserDaoImpl.class);

	public UserDaoImpl() {

		super(UserDetail.class);
		
		LOGGER.info("Setting Persistant class in GenericJpaDao");
		
	}

	public boolean checkEmail(String email) {
		
		boolean isAvailable=false;
		
		LOGGER.info("checking availability of email for registering new user");
		
		Assert.notNull(email);
		
		LOGGER.info("creating query with email : "+email);
		
		Query query = getEntityManager().createQuery(
				"select count(*) from " + getPersistentClass().getSimpleName()
						+ " u where u.email = :email").setParameter("email",
				email);
		LOGGER.info("Query Created Successfully : "+query.toString());
		
		isAvailable=(Integer) query.getSingleResult() < 1;
		
		LOGGER.info("returning the boolean result");
		
		return isAvailable;
	}

	public boolean checkUserName(String userName) {

		boolean isAvailable=false;
		
		Assert.notNull(userName);
		
		LOGGER.info("Creatring query for checking username availability with username : "+userName);		
	
		Query query = getEntityManager().createQuery(
				"select count(*) from  UserDetails u "
						+ "  where u.user.userName = :userName").setParameter(
				"userName", userName);

		LOGGER.info("Query Created Successfully"+query.toString());
		
		isAvailable=(Integer) query.getSingleResult() < 1;
		
		LOGGER.info("returning the boolean result : "+ isAvailable);
		
		return isAvailable;
	}

	public UserDetail loadUserByUserName(String userName) {

		UserDetail userDetail;
		
		Assert.notNull(userName);
		
		LOGGER.info("Creating Query with param : "+userName);
		
		Query query = getEntityManager().createQuery(
				"select u from  UserDetail u "
						+ "  where u.authority.user.userName = :userName").setParameter(
				"userName", userName);
		
		LOGGER.info("Query created Successfully");
		
		userDetail=(UserDetail) query.getSingleResult();
		
		LOGGER.info("User Fetched: "+userDetail.toString());
		
		return userDetail;
	}
	
	public UserDetail loadUserByEmail(String email) {

		Assert.notNull(email);

		Query query = getEntityManager().createQuery(
				"select count(*) from  UserDetails u "
						+ "  where u.email = :email").setParameter(
				"email", email);
		
		return (UserDetail) query.getSingleResult();
	}

	public void removeUserByUserUserName(String userName) {
		
		Assert.notNull(userName);
		
		LOGGER.info("Creating query with param: "+userName);

		Query query = getEntityManager().createQuery(
				"delete from  UserDetails u "
						+ "  where u.user.userName = :userName").setParameter(
				"userName", userName);
		
		LOGGER.info("query created successfully"+query.toString());
		
		int effectedRows=query.executeUpdate();
		
		if(effectedRows==1){
			
			LOGGER.info("user Blocked successfully");
			}
			
			else if(effectedRows<1){
				
				LOGGER.info("can not blocking user: UserNotExist");
				
				throw new FrameworkException("ERR001", "Can not blocking user");
			}
			else{
				
				LOGGER.info("Something gone wrong error throwing exception");
				
				throw new FrameworkException("ERR001", "Can not block user");
			}
		
	}

	public void blockUser(String userName) {
		
		LOGGER.info("Creating query for blocking username : "+userName);
		
		Query query = getEntityManager().createNativeQuery("update users set ENABLED=false where username='"+userName+"'" );
		
		int effectedRows=query.executeUpdate();
		
		if(effectedRows==1){
			
		LOGGER.info("user Blocked successfully");
		}
		
		else if(effectedRows<1){
			
			LOGGER.info("can not blocking user: UserNotExist");
			
			throw new FrameworkException("ERR001", "Can not blocking user");
		}
		else{
			
			LOGGER.info("Something gone wrong error throwing exception");
			
			throw new FrameworkException("ERR001", "Can not blocking user");
		}
		
	}

	public void unBlockUser(String userName) {

		LOGGER.info("Creating query for unblocking username : "+userName);
		
		Query query = getEntityManager().createNativeQuery("update users set ENABLED=true where username='"+userName+"'" );
		
		int effectedRows=query.executeUpdate();
		
		if(effectedRows==1){
			
		LOGGER.info("user Unblocked successfully");
		}
		
		else if(effectedRows<1){
			
			LOGGER.info("can not blocking user: UserNotExist");
			
			throw new FrameworkException("ERR001", "Can not blocking user");
		}
		else{
			
			LOGGER.info("Something gone wrong error throwing exception");
			
			throw new FrameworkException("ERR001", "Can not blocking user");
		}
		
	}
	
	

}
