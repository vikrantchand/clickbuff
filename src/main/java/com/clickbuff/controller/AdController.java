package com.clickbuff.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clickbuff.constants.CBConstants;
import com.clickbuff.model.Ad;
import com.clickbuff.service.AdService;

@Controller
@RequestMapping("/ad")
public class AdController {
	
	@Autowired
	private AdService adService;
	
	@RequestMapping(method = RequestMethod.GET, produces = CBConstants.CONTENT_TYPE)
	@ResponseBody
	public List<Ad> getAllAds() {

		return adService.getAllAds();
		

	}
	
	@RequestMapping(method = RequestMethod.POST, produces = CBConstants.CONTENT_TYPE,consumes=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public Ad addAd(@RequestBody Ad ad) {

		return adService.addAd(ad);
		

	}
	
	@RequestMapping(value="{adId}",method = RequestMethod.PUT, produces = CBConstants.CONTENT_TYPE,consumes=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public Ad updateAd(@RequestBody Ad ad, @PathVariable("adId") int adId) {
		return adService.updateAd(ad);
		

	}
	
	@RequestMapping(value="{adId}",method = RequestMethod.DELETE)
	@ResponseBody
	public void deleteAd(@PathVariable("adId") int adId) {

		 adService.deleteAdById(adId);
		

	}
	
	@RequestMapping(value="{adId}",method = RequestMethod.GET ,produces=CBConstants.CONTENT_TYPE)
	@ResponseBody
	public Ad findAd(@PathVariable("adId") int adId) {

		 return adService.getAdById(adId);
		

	}

}
