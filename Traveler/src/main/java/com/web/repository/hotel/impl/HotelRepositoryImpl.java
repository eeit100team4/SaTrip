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
import com.web.model.hotel.HotelRoomBean;
import com.web.repository.hotel.HotelRepository;
@Repository
public class HotelRepositoryImpl implements HotelRepository {
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

	@Override
	public HotelBean insertHotel(HotelBean hotelBean) {
		Session session = factory.getCurrentSession();		
		session.save(hotelBean);
		return hotelBean;
	}

	@Override
	public HotelBean udpateHotel(HotelBean hotelBean) {
		Session session = factory.getCurrentSession();
		HotelBean hb = session.get(HotelBean.class, hotelBean.getHotel_id());
		session.save(hb);
		return hb;
	}	
	
	@Override
	public boolean deleteHotel(int hotel_id) {
		Session session = factory.getCurrentSession();
		HotelBean hb = session.get(HotelBean.class, hotel_id);
		if (hb != null) {
			session.delete(hb);
			return true;
		}
		return false;
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
