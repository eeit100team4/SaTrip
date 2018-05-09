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
	
	 String sess = null;
 
	 
	 
	 @RequestMapping("/test")
	 public void testOpay() {
		 System.out.println("歐富寶測試");
	 }
	
	 @RequestMapping(value="/booking",method=RequestMethod.POST)
	 @ResponseBody
	 public String test(@RequestBody String order,Model model) {
		 Gson gs = new Gson();
		 OrderDetailsBean odb =gs.fromJson(order, OrderDetailsBean.class);
		 int id=os.addOrder(odb);
		 String orderid = os.selectOneById(id);
		 sess=session.getId();
		 session.setAttribute(sess, orderid);
		 session.setAttribute("sess", sess);
		 System.out.println("booking可以");
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
		Gson gson = new Gson();
		String jsonInString = gson.toJson(obean);
		model.addAttribute("bean",jsonInString);
		return "airTickets/passagngerInfo";
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
		int resultId =gs.addGuest(guestBean);
		String orderId=(String)session.getAttribute(sess);
		os.updateByOrderId(orderId, resultId);
		session.setAttribute("guestBean", guestBean);
		model.addAttribute("guestBean",guestBean);
		return "ticktesCheckOut";
	}
	@RequestMapping("/ticktesCheckOut")
	public String forwordTest3(Model model) {
		sess=session.getId();
		String orderId =(String) session.getAttribute(sess);
		OrderDetailsBean odBean = os.selectOneByOrderId(orderId);
		GuestBean guestBean = gs.selectById(odBean.getGuestId());
		System.out.println(odBean);
		model.addAttribute("orderList", odBean);
		model.addAttribute("guest", guestBean);
		return "airTickets/ticktesCheckOut";
	}
	
	@RequestMapping("/testOpay")
	public String testOp(){
		return "airTickets/ticktesCheckOut";
	}
}
