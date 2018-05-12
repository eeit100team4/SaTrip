package com.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

}
