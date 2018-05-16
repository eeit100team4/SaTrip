package com.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.model.airplain.GuestBean;
import com.web.model.airplain.OrderDetailsBean;
import com.web.service.airplain.BFMService;
import com.web.service.airplain.GuestService;
import com.web.service.airplain.OrderService;

@Controller
@RequestMapping("/airTickets/back")
public class airTicketsBackController {
	
	@Autowired
	BFMService bfmService;
	@Autowired
	HttpSession session;
	@Autowired
	OrderService os;
	@Autowired
	GuestService gs;
	
	@RequestMapping("/list")
	public String backList() {
		return"airTickets/back/airBackList";
	}
	
	@RequestMapping("/searchAll")
	public String searchAll(Model model){
		List<OrderDetailsBean> allOrder = os.getAllOrder();
		model.addAttribute("list",allOrder);
		return "airTickets/back/airBackAllOrder2";
	}
	
	@RequestMapping(value="/selectOne/{orderID}",method = RequestMethod.GET)
	public String selectOne(@PathVariable("orderID") String orderID,Model model) {
		OrderDetailsBean bean=os.selectOneByOrderId(orderID);
		model.addAttribute("bean",bean);
		System.out.println(bean);
		return "/airTickets/back/backtest";
	}
	
	@RequestMapping(value="/selectOne/{orderID}" ,method = RequestMethod.POST)
	@ResponseBody
	public String updateGuestInfo(GuestBean guestBean,OrderDetailsBean orderBean,Model model) {
		System.out.println("前"+guestBean);
		guestBean.setId(orderBean.getGuestId());
		gs.update(guestBean);
			System.out.println("後"+guestBean);
		return "OK";
	}

	@RequestMapping("/here")
	public String selectOne() {
		System.out.println("here in");
		return "/airTickets/back/here";
	}
	
}
