package com.web.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.web.model.theme.ThemeBean;
import com.web.model.theme.ThemeJourneys;
import com.web.model.theme.ThemeProducts;
import com.web.service.theme.ThemeService;

@Controller
public class ThemeBackController {
	@Autowired
	ThemeService themeService;

	// 新增主題用 產生空白表單 預設讀取GET方法
	@RequestMapping(value = "/theme/titleManagement", method = RequestMethod.GET)
	public String getAddNewThemeForm(Model model) {
		ThemeBean tb = new ThemeBean();
		model.addAttribute("themeBean", tb);
		return "theme/titleManagement";
	}

	// 新增主題用 傳入表單上的資訊，在原來頁面新增內容，在JSP裡指定POST方法
	@RequestMapping(value = "/theme/titleManagement", method = RequestMethod.POST)
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
	//後台頁面  連結到主題管理頁
	@RequestMapping("theme/management")
	public String title(){
		return "theme/management";
	}//後台頁面  連結
	@RequestMapping("theme/productManagement")
	public String product(){
		return "theme/productManagement";
	}//後台頁面  連結
	@RequestMapping("theme/journeyManagement")
	public String journey(){
		return "theme/journeyManagement";
	}//後台頁面  連結
	@RequestMapping("theme/applicationManagement")
	public String application(){
		return "theme/applicationManagement";
	}
	
	//顯示全部商品資料
	@RequestMapping("theme/products")
	public String productList(Model model) {
		List<ThemeProducts> list = themeService.getAllProducts();
		model.addAttribute("products", list);
		return "theme/products";	
	}
	
	//顯示全部行程內容
	@RequestMapping("theme/journeys")
	public String journeyList(Model model) {
		List<ThemeJourneys> list = themeService.getAllJourneys();
		model.addAttribute("journeys", list);
		return "theme/journeys";	
	}

}
