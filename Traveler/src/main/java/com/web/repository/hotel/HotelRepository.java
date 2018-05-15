package com.web.repository.hotel;

import java.util.List;

import com.web.model.hotel.HotelBean;

public interface HotelRepository {
	
	List<HotelBean> getAllHotels();
	
	HotelBean getProductById(int productId);
	
}
