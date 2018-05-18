package com.web.repository.hotel.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.model.hotel.HotelBean;
import com.web.model.hotel.HotelRoomBean;
import com.web.repository.hotel.HotelRoomRepository;


@Repository
public class HibernetHotelRoomRepository implements HotelRoomRepository {
	@Autowired
	SessionFactory factory;
	
	Session session = null;
	
	
	@Override
	public List<HotelRoomBean> getByRoom() {
		
		return null;
	}

	@Override
	public HotelRoomBean getHotelRoomById(int room_id) {
		HotelRoomBean hb = null;		
		hb= factory.getCurrentSession().get(HotelRoomBean.class, room_id);
		return hb;
	}

}
