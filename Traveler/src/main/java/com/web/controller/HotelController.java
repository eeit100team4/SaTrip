package com.web.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Blob;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;



@Controller
public class HotelController {
	
	// 從首頁點選主題旅遊時的dispatcher
	@RequestMapping("/_Hotel/HotelIndex")
	public String list(Model model) {
		
		return "_Hotel/HotelIndex";
	}

	
}
