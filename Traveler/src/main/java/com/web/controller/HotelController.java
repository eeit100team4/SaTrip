package com.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.model.theme.ThemeBean;
import com.web.service.theme.ThemeService;

@Controller
public class HotelController {
	@Autowired
	ThemeService themeService;
	//從首頁點選主題旅遊時的dispatcher
	@RequestMapping("_Hotel/hotel")
	public String list(Model model) {		
		return "_Hotel/hotel";
	}
	
	
}
