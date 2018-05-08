package com.web.model.airplain;

import java.io.Serializable;

import javax.crypto.SecretKeyFactory;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderRepository {
	
@Autowired
SessionFactory factory; 

Session session=null;

public int addTest(OrderDetailsBean odb) {
	 session = factory.getCurrentSession();
	Serializable re = session.save(odb);
	System.out.println(re);
	if(re!=null) {
		int temp=(int)re;
		return temp;
	}
	return 0;
}

public String selectOneById(int id) {
	session = factory.getCurrentSession();
	String hql="FROM OrderDetailsBean WHERE ID="+id;
	OrderDetailsBean result = session.createQuery(hql,OrderDetailsBean.class).uniqueResult();
	String orderId = result.getOrderID();
	String test = result.toString();
	System.out.println(test);
	return orderId;
}

public OrderDetailsBean selectOneByOrderId(String orderId) {
	session = factory.getCurrentSession();
	String hql="FROM OrderDetailsBean WHERE orderID="+orderId;
	OrderDetailsBean result = session.createQuery(hql,OrderDetailsBean.class).uniqueResult();
	return result;
}
	
	
}
