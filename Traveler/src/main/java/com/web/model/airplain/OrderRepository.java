package com.web.model.airplain;

import java.io.Serializable;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderRepository {

	@Autowired
	SessionFactory factory;

	Session session = null;

	public int addTest(OrderDetailsBean odb) {
		session = factory.getCurrentSession();
		Serializable re = session.save(odb);
		System.out.println(re);
		if (re != null) {
			int temp = (int) re;
			return temp;
		}
		return 0;
	}

	public String selectOneById(int iddd) {
		session = factory.getCurrentSession();
		String hql = "FROM OrderDetailsBean WHERE ID=" + iddd;
		OrderDetailsBean result = session.createQuery(hql, OrderDetailsBean.class).uniqueResult();
		String orderId = result.getOrderID();
		// String test = result.toString();
		// System.out.println(test);
		return orderId;
	}

	public OrderDetailsBean selectOneByOrderId(String orderId) {
		session = factory.getCurrentSession();
		Query<OrderDetailsBean> query = session.createQuery("FROM OrderDetailsBean WHERE orderID=" + orderId,
				OrderDetailsBean.class);
		// String hql = "FROM OrderDetailsBean WHERE orderID=" + orderId;
		OrderDetailsBean result = query.uniqueResult();
		return result;
	}

	public int updateByOrderId(String orderId, Integer guestId) {
		session = factory.getCurrentSession();
		System.out.println("update中的資訊" + orderId + "," + guestId);
		String hql = "UPDATE airTickets set depNum = :newName WHERE depNum = :dep";
		Query<OrderDetailsBean> query = session.createQuery(hql, OrderDetailsBean.class);
		System.out.println("query之後");
		query.setParameter("newnewNameName", 666);
		query.setParameter("dep", 333);
		int result = query.executeUpdate();
		return result;
	}

}
