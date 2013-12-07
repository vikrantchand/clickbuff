package test.training.impetus.tp.controller;



import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.security.core.userdetails.UserDetails;

import com.clickbuff.controller.UserController;
import com.clickbuff.enums.UserAuthority;
import com.clickbuff.model.Authority;
import com.clickbuff.model.User;
import com.clickbuff.model.UserDetail;

public class TestDao {
	
	ApplicationContext app=new ClassPathXmlApplicationContext("spring/mvc-config.xml");
	private  UserController  userController=(UserController) app.getBean("userController");
	
	public static void main(String args[]) {
		
		UserDetail u=new UserDetail();
		Authority auto=new Authority();
		
		u.setAltEmail("asdasdasd");
		u.setAltMobileNo("45454");
		u.setEmail("asfasf");
		auto.setUserAuthority(UserAuthority.CLIENT);
	User user=new User();
	auto.setUser(user);
	user.setAuthority(auto);
	user.setEnabled(true);
	user.setPassword("sdfsdf");
	user.setUserName("ee");
		u.setAuthority(auto);
		
		new TestDao().userController.addUser(u);
		
		UserDetail ud=new TestDao().userController.getUser("ee");
		
		
	}

}
