package com.web.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.web.model.airplain.OrderDetailsBean;
import com.web.service.airplain.BFMService;
import com.web.service.airplain.OrderService;

@Controller
public class airTicketsController {
	@Autowired
	BFMService bfmService;
	@Autowired
	HttpSession session;
	@Autowired
	OrderService os;
 
	 @RequestMapping({"/","index"})
	 public String index() {
	 return "index";
	 }

	 @RequestMapping("/booking")
	 @ResponseBody
	 public String test(@RequestBody String order,Model model) {
		 Gson gs = new Gson();
		 OrderDetailsBean odb =gs.fromJson(order, OrderDetailsBean.class);
		 int success=os.addOrder(odb);
		 String sess = session.getId();
		 System.out.println(success);
		 session.setAttribute("sess", sess);
	 return String.valueOf(success);
	 }

	@RequestMapping("/BFMS")
	public String getOrder(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
		String result = bfmService.BFMservice(request);
		model.addAttribute("result", result);
		model.addAttribute("depDate", request.getParameter("depDate"));
		model.addAttribute("reDate", request.getParameter("reDate"));
		return "airTickets/flightOrder";
	}
}
