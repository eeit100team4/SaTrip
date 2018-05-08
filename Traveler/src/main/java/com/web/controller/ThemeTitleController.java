package com.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.model.theme.ThemeBean;
import com.web.service.theme.ThemeService;

@Controller
public class ThemeTitleController {
	@Autowired
	ThemeService themeService;
	//從首頁點選主題旅遊時的dispatcher
	@RequestMapping("theme/themeTitles")
	public String list(Model model) {
		List<ThemeBean> list = themeService.getAllProducts();
		model.addAttribute("themeTitles", list);
		return "theme/themeTitles";
	}
	//新增主題用 產生空白表單
	@RequestMapping(value = "/theme/addTheme", method=RequestMethod.GET)
	public String getAddNewThemeForm(Model model){
		System.out.println("這是測試");
		ThemeBean tb = new ThemeBean();
		model.addAttribute("themeBean", tb);
		System.out.println("這是測試2");
		return "theme/addTheme";
	}
	//新增主題用 表單在原來頁面新增的內容
	@RequestMapping(value = "/theme/addTheme", method=RequestMethod.POST)
	public String processAddNewThemeForm(@ModelAttribute("themeBean")ThemeBean tb){
		System.out.println(tb);
		themeService.addThemeTitle(tb);
		return "redirect:themeTitles";
	}
}
