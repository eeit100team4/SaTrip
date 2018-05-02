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
import com.web.model.airplain.JsonTest;
import com.web.model.airplain.JsonTestTickets;
import com.web.model.airplain.TsetSerV2;
import com.web.service.BFMService;

@Controller
public class airTicketsController {
	@Autowired
	BFMService bfmService;
	@Autowired
	HttpSession session;
	@Autowired
	TsetSerV2 tes2;
 
	 @RequestMapping({"/","index"})
	 public String index() {
	 return "index";
	 }

	 @RequestMapping("/booking")
	 @ResponseBody
	 public String test(@RequestBody String jj,Model model) {
		 String test=jj;
		 System.out.println(jj);
		 Gson gs = new Gson();
		 JsonTestTickets jt =gs.fromJson(jj, JsonTestTickets.class);
		 System.out.println(jt.toString());
		 int re=tes2.addTese(jt);
		 String sess = session.getId();
		 session.setAttribute("sess", sess);
		 session.setAttribute("test", test);
	 return String.valueOf(re);
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
