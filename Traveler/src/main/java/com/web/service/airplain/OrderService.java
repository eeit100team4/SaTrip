package com.web.service.airplain;

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
	
}
