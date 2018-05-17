package com.web.repository.hotel.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.model.hotel.HotelBean;
import com.web.repository.hotel.HotelRepository;
@Repository
public class HibernateHotelRepository implements HotelRepository {
	@Autowired
	SessionFactory factory;
	
	@Override
	@SuppressWarnings("unchecked")
	public List<HotelBean> getAllHotels() {
		String hql = "FROM HotelBean";
		Session session = null;
		List<HotelBean> list = new ArrayList<>();		
		list = factory.getCurrentSession().createQuery(hql).getResultList();
		return list;
	}

	@Override
	public HotelBean getHotelById(int hotel_id) {
		HotelBean hb = null;		
		hb= factory.getCurrentSession().get(HotelBean.class, hotel_id);
		return hb;
	}


	

	

	

	

	
	
	
}
