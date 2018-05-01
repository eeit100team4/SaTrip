package com.web.model.airplain;

import java.io.Serializable;

import javax.crypto.SecretKeyFactory;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestServ {
@Autowired
SessionFactory factory;

public int addTest(JsonTest jt) {
	Session session = factory.getCurrentSession();
	System.out.println(jt.toString()+3);
	Serializable re = session.save(jt);
	if(re!=null) {
		return 1;
	}
	return 0;
}
	
}
