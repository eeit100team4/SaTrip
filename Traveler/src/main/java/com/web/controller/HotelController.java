package com.web.controller;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.hotel.HotelBean;
import com.web.service.hotel.HotelService;


@Controller
public class HotelController {
	@Autowired
	HotelService hotelService;
	//從首頁點選飯店時的dispatcher
	
	@Autowired
	ServletContext context;
	
	
	@RequestMapping("/_Hotel/DisplayHotel")
	public String list(Model model) {	
		List<HotelBean> list = hotelService.getAllHotels();
		model.addAttribute("hotels", list);
		return "_Hotel/DisplayHotel";
	}
	
	

	@RequestMapping("/_Hotel/DisplayRoom")
	public String getProductById(Model model) {
		return "_Hotel/DisplayRoom";
	}
	
	//在同一個應用系統裡，對於命名相同(getPicure)dispatcher無法辨識
	@RequestMapping(value = "/getPic/{hotel_id}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse resp, @PathVariable Integer hotel_id) {
	    HotelBean bean = hotelService.getProductById(hotel_id);
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
	            throw new RuntimeException("ProductController的getPicture()發生IOException: " 
				+ e.getMessage());
	        }
	        media = baos.toByteArray();
	    }
	    headers.setCacheControl(CacheControl.noCache().getHeaderValue());
	    ResponseEntity<byte[]> responseEntity = 
					new ResponseEntity<>(media, headers, HttpStatus.OK);
	    return responseEntity;
	}

	
	
	
	

	
	

	
}
