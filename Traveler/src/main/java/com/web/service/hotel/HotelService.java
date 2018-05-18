package com.web.service.hotel;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

import com.web.model.hotel.HotelBean;

public interface HotelService {
	
	
	Set<HotelBean> getHotelsByDateTime(Timestamp startTime,Timestamp endTime);

	List<HotelBean> getAllHotels();

	HotelBean getHotelById(int hotel_id);
		
	
}
