package com.clickbuff.controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clickbuff.constants.CBConstants;
import com.clickbuff.model.Shop;
import com.clickbuff.service.ShopService;
import com.clickbuff.vo.ShopBuffMeterVo;

@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
	private ShopService shopService;
	
	@RequestMapping(method = RequestMethod.GET, produces = CBConstants.CONTENT_TYPE)
	@ResponseBody
	public List<Shop> getAllShops() {

		return shopService.getAllShops();
		

	}
	
	@RequestMapping(method = RequestMethod.POST, produces = CBConstants.CONTENT_TYPE,consumes=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public Shop addShop(@RequestBody Shop shop) {

		return shopService.addShop(shop);
		

	}
	
	@RequestMapping(value="{shopId}",method = RequestMethod.PUT, produces = CBConstants.CONTENT_TYPE,consumes=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public Shop updateShop(@RequestBody Shop shop, @PathVariable("shopId") int shopId) {
		return shopService.updateShop(shop);
		

	}
	
	@RequestMapping(value="{shopId}",method = RequestMethod.DELETE)
	@ResponseBody
	public void deleteShop(@PathVariable("shopId") int shopId) {

		 shopService.deleteShopById(shopId);
		

	}
	
	@RequestMapping(value="{shopId}",method = RequestMethod.GET ,produces=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public Shop findShop(@PathVariable("shopId") int shopId) {

		 return shopService.getShopById(shopId);
		

	}
	
	@RequestMapping(value="{shopId}/{click}",method = RequestMethod.PUT ,produces=CBConstants.CONTENT_TYPE,consumes=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public int increaseClickCount(@PathVariable("shopId") int shopId) {

		 return shopService.increaseClickCount(shopId);
		

	}
	
	@RequestMapping(value="/buffmeter",method = RequestMethod.GET ,produces=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public Set<ShopBuffMeterVo> getBuffMeter() {

		 return shopService.getBuffMeter();
		

	}

}
