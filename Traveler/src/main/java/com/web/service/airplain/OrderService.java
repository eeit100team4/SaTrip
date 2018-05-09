package com.web.service.airplain;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.airplain.OrderDetailsBean;
import com.web.model.airplain.OrderRepository;

@Transactional
@Service
public class OrderService {

	@Autowired
	private OrderRepository or;

	public int addOrder(OrderDetailsBean odb) {
		 int re = or.addTest(odb);
		return re;
	}
	
	public String selectOneById(int id) {
		 String orderId = or.selectOneById(id);
		return orderId;
	}
	
	public OrderDetailsBean selectOneByOrderId(String orderId) {
		OrderDetailsBean ordId = or.selectOneByOrderId(orderId);
		return ordId;
	}
	
	public int updateByOrderId(String orderId,Integer guestId) {
		int result = or.updateByOrderId(orderId, guestId);
		return result;
	}
	
}
