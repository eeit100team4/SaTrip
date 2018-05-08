package com.web.controller;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.persistence.PostRemove;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.web.model.airplain.GuestBean;
import com.web.model.airplain.OrderDetailsBean;
import com.web.service.airplain.BFMService;
import com.web.service.airplain.GuestService;
import com.web.service.airplain.OrderService;

@Controller
@RequestMapping({"/airTickets"})
public class airTicketsController {
	@Autowired
	BFMService bfmService;
	@Autowired
	HttpSession session;
	@Autowired
	OrderService os;
	@Autowired
	GuestService gs;
 
	
	 @RequestMapping(value="/booking",method=RequestMethod.POST)
	 @ResponseBody
	 public String test(@RequestBody String order,Model model) {
		 Gson gs = new Gson();
		 OrderDetailsBean odb =gs.fromJson(order, OrderDetailsBean.class);
		 int id=os.addOrder(odb);
		 String orderid = os.selectOneById(id);
		 String sess = session.getId();
		 System.out.println(orderid);
		 session.setAttribute("sess", sess);
	 return orderid;
	 }

	@RequestMapping("/BFMS")
	public String getOrder(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
		String result = bfmService.BFMservice(request);
		model.addAttribute("result", result);
		model.addAttribute("depDate", request.getParameter("depDate"));
		model.addAttribute("reDate", request.getParameter("reDate"));
		model.addAttribute("psg", request.getParameter("psg"));
		return "airTickets/flightOrder";
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/{orId}")
	public String getOrder(@PathVariable("orId") String orId, Model model)  {
		OrderDetailsBean obean = os.selectOneByOrderId(orId);
		System.out.println(orId);
		System.out.println(obean);
		Gson gson = new Gson();
		String jsonInString = gson.toJson(obean);
		System.out.println(jsonInString);
		model.addAttribute("bean",jsonInString);
		return "airTickets/test";
	}
	
	
//	@ModelAttribute
//	public void getAtt( Map<String,Object> map) {
//		GuestBean gb = new GuestBean();
//		map.put("abc", gb);
//	}
	
//	@RequestMapping("/tt")
//	public String gatTest(Map<String,Object> map) {
//		
//		GuestBean gb = new GuestBean();
//		map.put("abc", gb);
//		
//		return "airTickets/test3";
//	}
	
	@RequestMapping(value="/guest" ,method=RequestMethod.POST)
	public @ResponseBody String addGuest(GuestBean guestBean,Model model) {
		System.out.println("in");
		System.out.println(guestBean);
//		int resultId =gs.addGuest(guestBean);
//		session.setAttribute("guestBean", guestBean);
//		model.addAttribute("guestBean",guestBean);
		return "ticktesCheckOut";
	}
	@RequestMapping("/ticktesCheckOut")
	public String forwordTest3() {
		return "airTickets/ticktesCheckOut";
	}
}
