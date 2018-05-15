package com.web.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.web.model.theme.ThemeBean;
import com.web.service.theme.ThemeService;

@Controller
public class ThemeTitleController {
	@Autowired
	ThemeService themeService;

	// 從首頁點選主題旅遊時的dispatcher
	@RequestMapping("theme/themeTitles")
	public String list(Model model) {
		List<ThemeBean> list = themeService.getAllProducts();
		model.addAttribute("themeTitles", list);
		return "theme/themeTitles";
	}
	//後台頁面  新增主題(暫時)
	@RequestMapping("theme/management")
	public String test(){
		return "theme/management";
	}


	// 新增主題用 產生空白表單 預設讀取GET方法
	@RequestMapping(value = "/theme/titleManagement", method = RequestMethod.GET)
	public String getAddNewThemeForm(Model model) {
		ThemeBean tb = new ThemeBean();
		model.addAttribute("themeBean", tb);
		return "theme/titleManagement";
	}

	// 新增主題用 傳入表單上的資訊，在原來頁面新增內容，在JSP裡指定POST方法
	@RequestMapping(value = "/theme/addTheme", method = RequestMethod.POST)
	public String processAddNewThemeForm(@ModelAttribute("themeBean") ThemeBean tb, HttpServletRequest request) {
		// 寫入圖片檔跟檔名
		MultipartFile titleImage = tb.getTitleImage();
		String originalFilename = titleImage.getOriginalFilename();
		tb.setFileName(originalFilename);
		// 讀取圖片副檔名
		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");

		themeService.addThemeTitle(tb);
		// 將上傳檔案移到指定資料夾
		try {
			// File imageFolder = new File("c:/test/image", "images");//資料夾位置
			// 將圖片存到Tomcat下的資料夾，但圖片不會顯示在左邊專案.....
			File imageFolder = new File("C:\\sts-bundle\\tomcat8\\webapps\\Traveler\\WEB-INF", "images");
			if (!imageFolder.exists()) {
				imageFolder.mkdirs();
			}
			// File file = new File(imageFolder, tb.getTitleId() + ext);講義寫法
			File file = new File(imageFolder, "themeTitle-" + tb.getTitleId() + ext);// (位置，名稱)
			titleImage.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
		}
		return "redirect:themeTitles";
	}

}
