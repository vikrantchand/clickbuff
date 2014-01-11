package test.training.impetus.tp.controller;



import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.clickbuff.controller.UserController;
import com.clickbuff.dao.ShopDao;
import com.clickbuff.enums.UserAuthorityType;
import com.clickbuff.model.Authority;
import com.clickbuff.model.Shop;
import com.clickbuff.model.ShopImageName;
import com.clickbuff.model.User;
import com.clickbuff.model.UserDetail;

public class TestDao {
	
	ApplicationContext app=new ClassPathXmlApplicationContext("spring/mvc-config.xml");
	private  UserController  userController=(UserController) app.getBean("userController");
	private  ShopDao  shopDao=(ShopDao) app.getBean("shopDao");
	
	public static void main(String args[]) {
		
		UserDetail u=new UserDetail();
		Authority auto=new Authority();
		
		u.setAltEmail("asdasdasd");
		u.setAltMobileNo("45454");
		u.setEmail("asfasf");
		auto.setUserAuthority(UserAuthorityType.CLIENT);
	User user=new User();
	auto.setUser(user);
	user.setEnabled(true);
	user.setPassword("sdfsdf");
	user.setUserName("ee");
		u.setAuthority(auto);
		
		new TestDao().userController.addUser(u);
		
		Shop s=new Shop();
		s.setCategoryId(1);
		s.setAddedDate(new Date());
		s.setLastUpdated(new Date());
		
		Set<ShopImageName> s1=new HashSet<ShopImageName>();
		ShopImageName f=new ShopImageName();
		f.setImageName("sfdsdfsdf");
		s1.add(f);
		s.setImages(s1);
		new TestDao().shopDao.save(s);

		
		
	}

}
