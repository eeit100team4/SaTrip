package com.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.omg.IOP.ServiceContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itextpdf.text.DocumentException;
import com.web.model.airplain.ExtraPriceBean;
import com.web.model.airplain.GuestBean;
import com.web.model.airplain.OrderDetailsBean;
import com.web.service.airplain.BFMService;
import com.web.service.airplain.ExtraPriceService;
import com.web.service.airplain.GuestService;
import com.web.service.airplain.OpayEncoding;
import com.web.service.airplain.OrderService;
import com.web.service.airplain.PdfProduceService;
import com.web.service.airplain.SendEmailService;

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
	@Autowired
	PdfProduceService pdf;
	@Autowired
	SendEmailService emailService;
	@Autowired
	ServletContext servletContext;
	@Autowired
	ExtraPriceService eps;

	String sess = null;

	// 呼叫BFM的API
	@RequestMapping("/BFMS")
	public String getOrder(HttpServletRequest request, Model model) {

		String result = bfmService.BFMservice(request);

		if (result == null) {
			System.out.println("壞查詢");
			return "redirect:/index";
		} else {
			// 產生PDF標題圖片
			try {
				pdf.imgProduce(servletContext);
			} catch (IOException e) {
				e.printStackTrace();
			}
			String dep = request.getParameter("dept");
			String arr = request.getParameter("arrv");
//			ExtraPriceBean epBean = eps.getExtraPrice(dep, arr);
//			Integer extraP = epBean.getExtraPrice();
//			if (extraP != null) {
//				System.out.println("加價");
//				// map.put("extraPrice", extraP);
//				model.addAttribute("extraPrice", extraP);
//			}

			model.addAttribute("result", result);
			model.addAttribute("depDate", request.getParameter("depDate"));
			model.addAttribute("reDate", request.getParameter("reDate"));
			model.addAttribute("dep", request.getParameter("dept"));
			model.addAttribute("arr", request.getParameter("arrv"));
			model.addAttribute("psg", request.getParameter("psg"));
			return "airTickets/flightOrder";
		}
	}

	// 將前端的訂單JSON字串傳入後由GSON轉為BEAN，寫入DB，將ORDERID存在SESSION層級中
	@RequestMapping(value = "/booking", method = RequestMethod.POST)
	@ResponseBody
	public String test(@RequestBody String order, Model model) {
		Gson gs = new Gson();
		OrderDetailsBean odb = gs.fromJson(order, OrderDetailsBean.class);
		int id = os.addOrder(odb);
		String orderid = os.selectOneById(id);
		session.setAttribute("orderID", orderid);
		System.out.println("將ORDERID存入SESSION orderId=" + orderid);
		return orderid;
	}

	// 將前端點選的機票內容，從DB中取出，顯示在VIEW
	@RequestMapping(method = RequestMethod.GET, value = "/show/{orId}")
	public String getOrder(@PathVariable("orId") String orId, Model model) {
		OrderDetailsBean obean = os.selectOneByOrderId(orId);
		Integer personNum = obean.getPerson();
		Gson gson = new Gson();
		String jsonInString = gson.toJson(obean);
		model.addAttribute("bean", jsonInString);
		model.addAttribute("personNum", personNum);
		return "airTickets/passagngerInfo";
	}

	// 將前端輸入的旅客資訊以formdata傳到後台，直接用bean接收後做處裡
	@RequestMapping(value = "/show/guest", method = RequestMethod.POST)
	public @ResponseBody String addGuest(GuestBean guestBean, Model model) {
		// int resultId = gs.addGuest(guestBean);
		// String orderId = (String) session.getAttribute(sess);
		// os.updateByOrderId(orderId, resultId);
		session.setAttribute("guestBean", guestBean);
		return "/Traveler/airTickets/ticktesCheckOut";
	}

	// 將前面下訂的資訊彙整到VIEW上，確認後即可付款
	@RequestMapping("/ticktesCheckOut")
	public String forwordTest3(Model model) {
		String orderId = (String) session.getAttribute("orderID");
		OrderDetailsBean odBean = os.selectOneByOrderId(orderId);
		System.out.println(odBean);
		model.addAttribute("orderList", odBean);
		return "airTickets/ticktesCheckOut";
	}

	// 呼叫歐富寶API，將前端的金流字串由後端加密成MacValue再傳給前端送出
	@RequestMapping("/opay")
	@ResponseBody
	public String doOpayMacValue(@RequestBody String mac) {
		String macValue = OpayEncoding.setCheckMacValue(mac);
		return macValue;

	}

	// 信用卡付款之後將table中的checkpay設為"已付款"，再導向付款完的view
	@RequestMapping("/checkOK")
	public String testOpay() throws DocumentException, IOException {
		String orderId = (String) session.getAttribute("orderID");
		// 將旅客資訊存入DB
		GuestBean guestBean = (GuestBean) session.getAttribute("guestBean");
		int resultId = gs.addGuest(guestBean);

		os.updateByOrderId(orderId, resultId);
		if (orderId != null) {
			os.updateCheckPayByOrderId(orderId);

			System.out.println("歐富寶測試");
			System.out.println("產生PDF");
			pdf.pdfProduce(os.selectOneByOrderId(orderId));
			emailService.sendEmail(orderId);
			System.out.println("寄信測試");
			return "redirect:finishPage";
		}
		return "airTickets/error";
	}

	// 測試下載
	@RequestMapping(value = "/download")
	public ResponseEntity<byte[]> download() throws IOException {
		String orderId = (String) session.getAttribute("orderID");
		if (orderId != null) {
			String filename = orderId + ".pdf";
			File file = new File("c:/OrderPDF/" + filename);
			HttpHeaders headers = new HttpHeaders();
			headers.setContentDispositionFormData("attachment", filename);
			headers.setContentType(MediaType.APPLICATION_PDF);
			return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
		}
		return null;
	}

	@RequestMapping("/pricetest")
	public String toTest2(Model model) {
		ExtraPriceBean epBean = eps.getExtraPrice("TPE", "HND");
		Integer price = epBean.getExtraPrice();
		System.out.println(price);
		return "airTickets/finishPage";
	}

	@RequestMapping("/finishPage")
	public String testPdf() throws DocumentException, IOException {
		return "airTickets/finishPage";
	}

	@RequestMapping(value = "reSend", method = RequestMethod.POST)
	public String reSendTest(HttpServletRequest request, Model model) throws IOException {
		String result = bfmService.BFMservice(request);

		String dep = request.getParameter("dept");
		String arr = request.getParameter("arrv");
		ExtraPriceBean epBean = eps.getExtraPrice(dep, arr);
		Integer extraP = epBean.getExtraPrice();
		if (extraP != null) {
			model.addAttribute("extraPrice", extraP);
		}

		model.addAttribute("result", result);
		model.addAttribute("depDate", request.getParameter("depDate"));
		model.addAttribute("reDate", request.getParameter("reDate"));
		model.addAttribute("dep", request.getParameter("dept"));
		model.addAttribute("arr", request.getParameter("arrv"));
		model.addAttribute("psg", request.getParameter("psg"));
		return "airTickets/flightOrder";
	}

}
