package com.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.model.member.MemberBean;

@Controller
public class HomeController {

 
	 @RequestMapping({"/","index"})
	 public String index() {
	 return "index";
	 }
	 
	 @RequestMapping({"/backStage"})
	 public String backStage() {
	 return "backstage";
	 }
	 
	 @RequestMapping(value = "/{xxx}Index", method = RequestMethod.GET)
		public String findOwner(@PathVariable String xxx, HttpServletRequest request, HttpServletResponse response,
				Model model) {
			System.out.println("xxx="+xxx+"Index");
			HttpSession session = request.getSession();
			MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
			System.out.println("mb=" + mb);
			if (mb != null) {// 未避免使用者尚未登入，造成nullPointException
				String cFirstName = mb.getChineseFirstName();
				String eFirstName = mb.getEnglishFirstName();
				// 看是否有中文名字，有則show中文名，沒有則show英文
				String userName = (StringUtils.isNotEmpty(cFirstName)) ? cFirstName : eFirstName;
				model.addAttribute("userName", userName);
			}
			return xxx + "Index";
		}
	 
}
