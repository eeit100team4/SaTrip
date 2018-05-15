package com.web.service.hotel;

import java.util.List;

import com.web.model.hotel.HotelBean;

public interface HotelService {
	List<HotelBean> getAllHotels();
	
	
	HotelBean getProductById(int productId);
	
	
}
