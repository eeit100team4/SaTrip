package com.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.web.model.theme.ThemeBean;
import com.web.model.theme.ThemeProducts;
import com.web.service.theme.ThemeService;

@Controller
public class ThemeController {
	@Autowired
	ThemeService themeService;

	// 從首頁點選主題旅遊時的dispatcher
	@RequestMapping("theme/themeTitles")
	public String list(Model model) {
		List<ThemeBean> list = themeService.getAllProducts();
		model.addAttribute("themeTitles", list);
		return "theme/themeTitles";
	}
	//叫出各title，顯示在網頁
	@RequestMapping("/theme/titles")
	public String getTitleList(Model model) {
		List<String> list = themeService.getAllTitles();
		model.addAttribute("titleList", list);
		System.out.println(list);//測試
		return "theme/titles";
	}
	//選擇title後，列出相關產品
	@RequestMapping("/theme/products/{titleName}")
	public String getProductsByTitle(@PathVariable("titleName") String titleName, Model model) {
		List<ThemeProducts> products = themeService.getProductsByTitle(titleName);
		model.addAttribute("products", products);
		System.out.println(products);//測試
		return "theme/products";
	}
}
