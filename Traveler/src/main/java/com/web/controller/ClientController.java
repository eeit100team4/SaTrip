package com.web.controller;



import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.commodity.ClientBean;
import com.web.model.commodity.CommodityBean;
import com.web.model.member.MemberBean;
import com.web.service.commodity.ClientService;
import com.web.service.commodity.CommodityService;

@Controller
public class ClientController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	CommodityService commodityservice;
	
	@Autowired
	ClientService clientservice;
	
//	@Autowired
//	MemberService memberservice;
	
	
	@Autowired
	ServletContext context; 
	
	
    //前台顯示商品資料
	@RequestMapping("/commlistfront")
	public String listFront(Model model) {
		List<CommodityBean>  list = commodityservice.getAllData();
		model.addAttribute("commlist", list);
		
		if(session==null) {
			return"/member/login";
		}else {
			return "commodity/commlistfront";
		}
		
	}
		

//	上面的兌換按鈕按下後送到下面這個空白單
//	new空白的ClientBean給表單
	@RequestMapping(value="/tsuikaClient/{commodityid}",method=RequestMethod.GET)
	public String insertClientForm(
			@PathVariable("commodityid") Integer commodityid,
//			@RequestParam("memberId") String memberId,
			Model model) {

		ClientBean cb=new ClientBean();
		CommodityBean ctb = commodityservice.getCommodityById(commodityid);
		MemberBean mb=clientservice.getMemberById("1");
         cb.setCommodityBean(ctb);
         cb.setMemberBean(mb);
        model.addAttribute("Client",cb);

		
		return "commodity/addclient";
	}


	@RequestMapping(value="/addclientpath", method=RequestMethod.POST)
	public  String addclientform(@ModelAttribute("Client") ClientBean cb ,
//			                     @RequestParam("memberId") String memberId,
			                     @RequestParam("commid")  Integer commodityid,
			                    Model model) 
			                     {

		CommodityBean ctb = commodityservice.getCommodityById(commodityid);
		MemberBean mb=clientservice.getMemberById("1");
     
		Double compoint =ctb.getPoint(); //單個商品點數		
		Double mempoint=mb.getPoint();  //會員點數		
		Integer CliQuantity=cb.getCliquantity(); //購買數量
				
		Double Allpoint=compoint*CliQuantity;  //總購買點數 (單商品點數*購買數量)
		
		Integer CommQuantity =ctb.getQuantity(); //原本倉庫數量

				
		if(mempoint>Allpoint && CommQuantity>CliQuantity) {
			Double finalpoint =	mempoint-Allpoint; //最後剩餘點數 = 會員點數-購買商品點數
			mb.setPoint(finalpoint);
			clientservice.addMemberA(mb);	
			
			Integer finalQuantity=CommQuantity-CliQuantity;
			ctb.setQuantity(finalQuantity);
			commodityservice.addCommodityA(ctb);
		}else {
//			 throw new Exception("點數or數量不足");
			 return "commodity/error";
		}
	
		cb.setComId(ctb.getCommodityid());
		cb.setPoint(Allpoint);
		cb.setMemId(mb.getMemberId());
	
		clientservice.addClient(cb);
		 			
		return "commodity/addclientOK";
	
		
	}

	
	//後台顯示商品兌換清單
		@RequestMapping("/ClientLists")
		public String listClient(
				                  Model model) {
			List<ClientBean>  list = clientservice.getAllData();
			model.addAttribute("ClientLists", list);
	
		
			return "commodity/CliList";
		}
	
	
	
	
}
