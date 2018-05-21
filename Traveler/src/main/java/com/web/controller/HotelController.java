package com.web.controller;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.security.Timestamp;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.web.model.hotel.HotelBean;
import com.web.model.hotel.HotelBookingDateBean;
import com.web.model.hotel.HotelRoomBean;
import com.web.repository.hotel.HotelBookingDateRepository;
import com.web.repository.hotel.HotelRoomRepository;
import com.web.repository.hotel.impl.HotelBookingDateRepositoryImpl;
import com.web.service.hotel.HotelBookingDatieService;
import com.web.service.hotel.HotelRoomService;
import com.web.service.hotel.HotelService;

@Controller
public class HotelController {
	@Autowired
	HotelService hotelService;
	
	@Autowired
	HotelRoomService hotelRoomService;
	
//	@Autowired
//	HotelBookingDatieService hotelBookingDatieService;

	@Autowired
	ServletContext context;

	

	// 顯示HotelIndex
	@RequestMapping("/_Hotel/SelectHotel")
	public String list2(Model model) {
		return "_Hotel/SelectHotel";
	}

	// 取得HotelBean資料，顯示多筆Hotel資料
	@RequestMapping("/_Hotel/DisplayHotel")
	public String list(Model model) {
		List<HotelBean> list = hotelService.getAllHotels();
		model.addAttribute("hotels", list);
		return "_Hotel/DisplayHotel";
	}

	// 顯示DisplayRoom
	@RequestMapping("/_Hotel/DisplayRoom")
	public String getProductById(Model model) {
		return "_Hotel/DisplayRoom";
	}
	
	//篩選扭送出呈現Hotel畫面 
	@RequestMapping("/_Hotel/Listed")
	public String getProductByIds(@RequestParam("start") String start, @RequestParam("end") String end,@RequestParam("location") String location, Model model) throws ParseException {
		// '2018/06/01' and '2018/06/05'		
						
		
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");		
		Date parsedDate = dateFormat.parse(start);
		java.sql.Timestamp startTime = new java.sql.Timestamp(parsedDate.getTime());
		
		Date parsedDate1 = dateFormat.parse(end);
		java.sql.Timestamp endTime = new java.sql.Timestamp(parsedDate1.getTime());

		Set<HotelBean> hotels = hotelService.getHotelsByDateTime(startTime, endTime);
		
		
//		System.out.println("================"+hotelService.getHotelsByDateTime(startTime, endTime).size());		
//		System.out.println("================");
		model.addAttribute("hotels",hotels);
		model.addAttribute("location",location);
		return "_Hotel/Listed";
	}
	
	

	// 取的Hotel照片(顯示照片)----(在同一個應用系統裡，對於命名相同(getPicure)dispatcher無法辨識)
	@RequestMapping(value = "/getPic/{hotel_id}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse resp, @PathVariable Integer hotel_id) {
		HotelBean bean = hotelService.getHotelById(hotel_id);
		HttpHeaders headers = new HttpHeaders();
		Blob blob = bean.getCoverImage();
		int len = 0;
		byte[] media = null;
		if (blob != null) {
			try {
				len = (int) blob.length();
				media = blob.getBytes(1, len);
			} catch (SQLException e) {
				throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
			}
		} else {
			InputStream is = context.getResourceAsStream("/Traveler/images/NoImage.jpg");
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			byte[] b = new byte[8192];
			try {
				while ((len = is.read(b)) != -1) {
					baos.write(b, 0, len);
				}

			} catch (Exception e) {
				throw new RuntimeException("ProductController的getPicture()發生IOException: " + e.getMessage());
			}
			media = baos.toByteArray();
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}
	
	
	
		
		
	
	
	
	
	//新增Hotel -GET
	@RequestMapping(value = "/_Hotel/addProduct", method = RequestMethod.GET)
	public String getAddNewHotelForm(Model model) {
	    HotelBean hb = new HotelBean();
	    model.addAttribute("hotelBean", hb); 
	    return "_Hotel/addProduct";
	}
	
	
	
//	//新增Room -GET
//	@RequestMapping(value = "", method = RequestMethod.GET)
//	public String getAddNewHootelRoomForm(Model model) {
//	    HotelRoomBean hrb = new HotelRoomBean();
//	    model.addAttribute("hotelRoomBean", hrb); 
//	    return "";
//	}
//	
	//新增Hotel -POST
	@RequestMapping(value = "/_Hotel/addProduct", method = RequestMethod.POST)
	public String getAddNewHotelForm(@ModelAttribute("hotelBean") HotelBean hb, HttpServletRequest request) { 
		
		MultipartFile productImage = hb.getProductImage();
		String originalFilename = productImage.getOriginalFilename();
		hb.setFile_name(originalFilename);
		
		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		//  建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage != null && !productImage.isEmpty() ) {
			try {
				byte[] b = productImage.getBytes();
				Blob blob = new SerialBlob(b);
				hb.setCoverImage(blob);
			} catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		hotelService.insertHotel(hb);
	    return "redirect:/fasdfas";
	    
	    
	    
	    
	    
	}
//	
//	//新增Room -POST
//	@RequestMapping(value = "", method = RequestMethod.POST)
//	public String getAddNewHotelRoomForm(@ModelAttribute("hotelRoomBean") HotelRoomBean hrb, BindingResult result,
//			HttpServletRequest reques) { 
//		hotelRoomService.insertHotelRoom(hrb);
//	    return "redirect:/";
//	}

	
	
	

}
