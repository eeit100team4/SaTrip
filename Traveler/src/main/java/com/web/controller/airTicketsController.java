package com.web.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Map;

import javax.persistence.PostRemove;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
import com.web.service.airplain.OpayEncoding;
import com.web.service.airplain.OrderService;

@Controller
@RequestMapping({ "/airTickets" })
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

	// 呼叫BFM的API
	@RequestMapping("/BFMS")
	public String getOrder(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
		String result = bfmService.BFMservice(request);
		model.addAttribute("result", result);
		model.addAttribute("depDate", request.getParameter("depDate"));
		model.addAttribute("reDate", request.getParameter("reDate"));
		model.addAttribute("psg", request.getParameter("psg"));
		return "airTickets/flightOrder";
	}

	// 將前端的訂單JSON字串傳入後由GSON轉為BEAN，寫入DB，將ORDERID存在SESSION層級中
	@RequestMapping(value = "/booking", method = RequestMethod.POST)
	@ResponseBody
	public String test(@RequestBody String order, Model model) {
		Gson gs = new Gson();
		OrderDetailsBean odb = gs.fromJson(order, OrderDetailsBean.class);
		int id = os.addOrder(odb);
		String orderid = os.selectOneById(id);
		sess = session.getId();
		session.setAttribute(sess, orderid);
		session.setAttribute("sess", sess);
		return orderid;
	}

	//將前端點選的機票內容，從DB中取出，顯示在VIEW
	@RequestMapping(method = RequestMethod.GET, value = "/{orId}")
	public String getOrder(@PathVariable("orId") String orId, Model model) {
		OrderDetailsBean obean = os.selectOneByOrderId(orId);
		Gson gson = new Gson();
		String jsonInString = gson.toJson(obean);
		model.addAttribute("bean", jsonInString);
		return "airTickets/passagngerInfo";
	}
	//將前端輸入的旅客資訊以formdata傳到後台，直接用bean接收後做處裡
	@RequestMapping(value = "/guest", method = RequestMethod.POST)
	public @ResponseBody String addGuest(GuestBean guestBean, Model model) {
		int resultId = gs.addGuest(guestBean);
		String orderId = (String) session.getAttribute(sess);
		os.updateByOrderId(orderId, resultId);
		session.setAttribute("guestBean", guestBean);
		model.addAttribute("guestBean", guestBean);
		return "ticktesCheckOut";
	}
	
	
	//將前面下訂的資訊彙整到VIEW上，確認後即可付款
	@RequestMapping("/ticktesCheckOut")
	public String forwordTest3(Model model) {
		sess = session.getId();
		String orderId = (String) session.getAttribute(sess);
		OrderDetailsBean odBean = os.selectOneByOrderId(orderId);
		System.out.println(odBean);
		model.addAttribute("orderList", odBean);
		return "airTickets/ticktesCheckOut";
	}
	
	//呼叫歐富寶API，將前端的金流字串由後端加密成MacValue再傳給前端送出
	@RequestMapping("/opay")
	@ResponseBody
	public String doOpayMacValue(@RequestBody String mac) {
		String macValue = OpayEncoding.setCheckMacValue(mac);
		return macValue;

	}

	//信用卡付款之後將table中的checkpay設為"已付款"，再導向付款完的view
	@RequestMapping("/checkOK")
	public String testOpay() {
		String orderId = (String) session.getAttribute(sess);
		os.updateCheckPayByOrderId(orderId);
		System.out.println("歐富寶測試");

		return "airTickets/test2";
	}
}
