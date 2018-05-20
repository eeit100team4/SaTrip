package com.web.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSpinnerUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.model.airplain.ExtraPriceBean;
import com.web.model.airplain.GuestBean;
import com.web.model.airplain.OrderDetailsBean;
import com.web.service.airplain.BFMService;
import com.web.service.airplain.ExtraPriceService;
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
	@Autowired
	ExtraPriceService eps;

	@RequestMapping("/list")
	public String backList() {
		return "airTickets/back/airBackList";
	}

	@RequestMapping("/searchAll")
	public String searchAll(Model model) {
		List<OrderDetailsBean> allOrder = os.getAllOrder();
//		 Date date = new Date();
//		boolean newOrder=false;
//		if((date.getTime()-bean.getOrderDay().getTime())<=(2*3600*24)) {
//			newOrder=true;
//		}
		model.addAttribute("list", allOrder);
//		model.addAttribute("date", date);
		
		return "airTickets/back/airBackAllOrder2";
	}

	@RequestMapping(value = "/selectOne/{orderID}", method = RequestMethod.GET)
	public String selectOne(@PathVariable("orderID") String orderID, Model model) {
		OrderDetailsBean bean = os.selectOneByOrderId(orderID);
		model.addAttribute("bean", bean);
		System.out.println(bean);
		return "/airTickets/back/searchOrderList";
	}

	@RequestMapping(value = "/selectOne/{orderID}", method = RequestMethod.POST)
	@ResponseBody
	public String updateGuestInfo(GuestBean guestBean, OrderDetailsBean orderBean, Model model) {
		System.out.println("前" + guestBean);
		guestBean.setId(orderBean.getGuestId());
		gs.update(guestBean);
		System.out.println("後" + guestBean);
		return "OK";
	}

	@RequestMapping("/here")
	public String selectOne() {
		System.out.println(eps.getExtraPrice("TPE","HND"));
		return "/airTickets/back/here";
	}
	
	@RequestMapping(value="/extra",method=RequestMethod.POST)
	@ResponseBody
	public Map getExtraPrice(@RequestParam("dept") String dept, @RequestParam("arrv") String arrv) {
		System.out.println(dept + "," + arrv);
		ExtraPriceBean result = eps.getExtraPrice(dept, arrv);
		Map<String,Integer> map = new HashMap<>();
		map.put("pkId",result.getId());
		map.put("extraPrice", result.getExtraPrice());
		return map;

	}
	
	@RequestMapping(value="/updateExtra",method=RequestMethod.POST)
	@ResponseBody
	public String updateExtraPrice(ExtraPriceBean epBean) {
		System.out.println(epBean);
		eps.updateExtraPrice(epBean);
		return "OK";

	}

}
