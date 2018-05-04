package com.web.service.airplain;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.airplain.OrderDetailsBean;
import com.web.model.airplain.OrderRepository;

@Service
public class OrderService {

	@Autowired
	private OrderRepository or;

	@Transactional
	public int addOrder(OrderDetailsBean odb) {
		 int re = or.addTest(odb);
		return re;
	}
	
	@Transactional
	public String selectOneById(int id) {
		 String orderId = or.selectOneById(id);
		return orderId;
	}
	
	@Transactional
	public OrderDetailsBean selectOneByOrderId(String orderId) {
		OrderDetailsBean ordId = or.selectOneByOrderId(orderId);
		return ordId;
	}
	
}
