package com.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.model.contactus.ContactusBean;
import com.web.service.contactus.ContactusService;


@Controller
public class ContactusController {

	@Autowired
	ContactusService contactusService;
	
	@RequestMapping("contactus/contactusopinion")
	public String list(Model model) {
		List<ContactusBean> list=contactusService.getAllContactus();
		model.addAttribute("contactus", list);
		return "contactus/contactusopinion";
	}
	
	@ModelAttribute
	public void test(Map<String,Object> map) {
		System.out.println("modelAttribute");
		ContactusBean contactus = new ContactusBean();
		map.put("contactusBean",contactus);
	}
	
	@RequestMapping(value="contactus/InsertOpinionSuccess",method=RequestMethod.GET)
	public String getAddNewContactusForm(Model model) {
		System.out.println("enter");
		ContactusBean contactus = new ContactusBean();
		model.addAttribute("contactusBean",contactus);
		return "contactus/InsertOpinionSuccess";
	}
	@RequestMapping(value="contactus/InsertOpinionSuccess",method=RequestMethod.POST)
	public String processAddNewContactusForm(@ModelAttribute("contactusBean")ContactusBean contactus,
			BindingResult result, HttpServletRequest request) {
		System.out.println("ENTER POST");
		System.out.println(contactus);
		contactusService.addCustomerOpinion(contactus);
		return "redirect:/contactus/InsertOpinionSuccess";
	}
}
