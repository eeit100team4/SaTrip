package com.web.model.airplain;

import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.jsf.FacesContextUtils;

@Repository
public class GuestRepository {
	
	@Autowired
	SessionFactory sessionFactory;
	Session session=null;
	
	public int addGuest(GuestBean guestBean) {
		session=sessionFactory.getCurrentSession();
		Serializable re = session.save(guestBean);
		int returnId=(int)re;
		return returnId;
	}
	
}