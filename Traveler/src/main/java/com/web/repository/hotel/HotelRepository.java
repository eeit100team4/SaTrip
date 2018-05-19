package com.web.repository.hotel;

import java.util.List;

import com.web.model.hotel.HotelBean;
import com.web.model.hotel.HotelRoomBean;

public interface HotelRepository {
	
	List<HotelBean> getAllHotels();
	
	HotelBean getHotelById(int hotel_id);
	
//	List<HotelBean> getAllHotels(String country, String city, String name, String address);
	
	
	
//	void addHotel(HotelBean hotel_id);
//	HotelRoomBean getHotelByID(int room_id);
//	List<HotelRoomBean> getHotelList();
//	
	
	
	
}
