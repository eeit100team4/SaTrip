package com.web.service.hotel.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.hotel.HotelBean;
import com.web.repository.hotel.HotelRepository;
import com.web.service.hotel.HotelService;
@Service
public class HotelServiceImpl implements HotelService {
	@Autowired
	private HotelRepository hotelRepository;
	
	@Transactional
	@Override
	public List<HotelBean> getAllHotels() {
		
		return hotelRepository.getAllHotels();
	}
	@Transactional
	@Override
	public HotelBean getHotelById(int hotel_id) {
		return hotelRepository.getHotelById(hotel_id);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
