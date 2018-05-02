package com.web.model.airplain;

import java.io.Serializable;

import javax.crypto.SecretKeyFactory;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderRepository {
@Autowired
SessionFactory factory;

public int addTest(OrderDetailsBean odb) {
	Session session = factory.getCurrentSession();
	Serializable re = session.save(odb);
	if(re!=null) {
		return (int) re;
	}
	return 0;
}
	
}
