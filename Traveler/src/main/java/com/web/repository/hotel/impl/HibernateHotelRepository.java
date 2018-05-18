package com.web.repository.hotel.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.model.airplain.OrderDetailsBean;
import com.web.model.hotel.HotelBean;
import com.web.repository.hotel.HotelRepository;
@Repository
public class HibernateHotelRepository implements HotelRepository {
	@Autowired
	SessionFactory factory;
	
	Session session = null;
	
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

//	@OVERRIDE
//	PUBLIC LIST<HOTELBEAN> GETALLHOTELS(STRING COUNTRY, STRING CITY, STRING NAME, STRING ADDRESS) {
//		SESSION = FACTORY.GETCURRENTSESSION();
//		QUERY<ORDERDETAILSBEAN> QUERY = SESSION.CREATEQUERY("FROM HOTEL WHERE COUNTRY=:COUNTRY AND CITY=:CITY AND NAME=:NAME AND ADDRESS=:ADDRESS",
//				ORDERDETAILSBEAN.CLASS);
//		QUERY.SETPARAMETER("ORDERID", ORDERID);
//		// STRING HQL = "FROM ORDERDETAILSBEAN WHERE ORDERID=" + ORDERID;
//		ORDERDETAILSBEAN RESULT = QUERY.UNIQUERESULT();
//		RETURN RESULT;
//	}
	
	

	

	

	

	

	
	
	
}
