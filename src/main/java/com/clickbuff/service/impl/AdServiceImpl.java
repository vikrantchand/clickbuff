package com.clickbuff.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.clickbuff.dao.AdDao;
import com.clickbuff.model.Category;
import com.clickbuff.model.Ad;
import com.clickbuff.service.AdService;

@Service
public class AdServiceImpl implements AdService {

	@Autowired
	private AdDao adDao;

	public List<Ad> getAllAds() {

		return adDao.findAll();
	}

	public Ad getAdById(int id) {

		return adDao.findById(id);
	}

	@Transactional
	public Ad addAd(Ad Ad) {
		return adDao.save(Ad);
	}

	@Transactional
	public Boolean deleteAdById(int id) {
		return false;
	}

	@Transactional
	public void delete(Ad Ad) {
		adDao.delete(Ad);
	}

	@Transactional
	public Ad updateAd(Ad Ad) {
		return adDao.update(Ad);
	}

}
