package com.web.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.service.BFMService;

@Controller
public class HomeController {
	@Autowired
	BFMService bfmService;
	@Autowired
	HttpSession session;

	 @RequestMapping("/")
	 public String index() {
	 return "index";
	 }

	 @RequestMapping("/booking")
//	 @ResponseBody
	 public String test(@RequestParam(value="id") Integer id, 
             @RequestParam(value="name") String name,Model model) {
		 String test=id+","+name;
//	 model.addAttribute("test", test);
		 session.setAttribute("test", test);
	 System.out.println(test);
	 return "test";
	 }

	@RequestMapping("/BFMS")
	public String getOrder(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
		String result = bfmService.BFMservice(request);
		model.addAttribute("result", result);
		return "flightOrder";
	}
}
