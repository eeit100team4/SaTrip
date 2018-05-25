package com.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.commodity.CommodityBean;
import com.web.model.contactus.ContactusBean;

import com.web.repository.contactus.ContactusRepository;

import com.web.model.member.MemberBean;
import com.web.service.contactus.ContactusService;


@Controller
public class ContactusController {

	@Autowired
	ContactusService contactusService;
	@Autowired
	SessionFactory factory;
	@Autowired
	HttpSession session;
	
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
	public String getAddNewContactusForm(@ModelAttribute("contactusBean")ContactusBean contactus2,Model model) {
		System.out.println("enter");
//		ContactusBean contactus = new ContactusBean();
		
		model.addAttribute("contactusBean",contactus2);
		return "contactus/InsertOpinionSuccess";
	}
	@RequestMapping(value="contactus/InsertOpinionSuccess",method=RequestMethod.POST)
	public String processAddNewContactusForm(@ModelAttribute("contactusBean")ContactusBean contactus2,
			BindingResult result, HttpSession session) {
		System.out.println("ENTER POST");
		System.out.println(contactus2);
//		session.setAttribute("abc", contactus);
		contactusService.addCustomerOpinion(contactus2);
		session.setAttribute("aa", contactus2);
		return "redirect:/contactus/contactusopinion";
	}


	@RequestMapping(path="contactus/feedbackopinion/{pkid}")
	public String updateForm(Model model,
			@ModelAttribute("contactusBean") ContactusBean contactus,@PathVariable ("pkid") Integer pkid) {
//		List<ContactusBean>  list = contactusService.getAllFeedback();
//		model.addAttribute("contactus", list);
		contactusService.updateCustomerOpinion(contactus);
		
		return "redirect:/contactus/selectopinion";	
		
	}
//	
//	@RequestMapping(path= "/feedbackopinion/{pkid}" ,method=RequestMethod.POST)
//	public String updateForm(@ModelAttribute("contactusBean") ContactusBean contactus,
//			@PathVariable Integer pkid) {
//		contactusService.updateContactusBean(contactus);
//		return "redirect:/feedbackopinion";
//	}
//	@RequestMapping("/update/feedbackopinion")
//	public String updateFeedback(Model model) {
//		contactusService.getAllFeedback();
//		return "redirect:/contactus/feedbackopinion";	
//	}
	
//	@RequestMapping(value= "/feedbackopinion",method=RequestMethod.POST)
//	public String update(@ModelAttribute("contactusBean") ContactusBean contactus,
//			BindingResult result, HttpSession session) {
//		contactusService.updateContactusBean(contactus);
//		session.setAttribute("aa", contactus);
//		return "redirect:/contactus/feedbackopinion";
//	}
	
	
	
	@RequestMapping("/contactus/{pkid}")
	public String list2(@PathVariable("pkid")Integer pkid,Model model) {
		List<ContactusBean> list2=contactusService.getAllContactus(pkid);
		model.addAttribute("contactus", list2);
		return "contactus/feedbackopinion";
	}
	@RequestMapping("/contactus/InsertSuccessOpinion")
	public String insertSuccessopinion(Model model) {
		List<ContactusBean> insertSuccessopinion=contactusService.getAllContactus();
		model.addAttribute("contactus", insertSuccessopinion);
		return "redirect:/contactus/InsertSuccessOpinion";
	}
	
	@RequestMapping("contactus/StatisticsReport")
	public String list3(Model model) {
		
		return "contactus/StatisticsReport";
	}
	
	@RequestMapping("contactus/contactuspieasia")
	public String list4(Model model) {
		return "contactus/contactuspieasia";
	}
	@RequestMapping("contactus/contactuspieage")
	public String list5(Model model) {
		return "contactus/contactuspieage";
	}
	
	
	@RequestMapping("contactus/selectopinion")
	public String list6(Model model) {
		List<ContactusBean> list2=contactusService.getAllContactus();
		model.addAttribute("contactus", list2);
		return "contactus/selectopinion";
	}
}
