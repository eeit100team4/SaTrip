package com.web.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.web.model.theme.ThemeTitles;
import com.web.model.theme.ThemeApplications;
import com.web.model.theme.ThemeJourneys;
import com.web.model.theme.ThemeProducts;
import com.web.service.theme.ThemeService;

@Controller
public class ThemeBackController {
	@Autowired
	ThemeService themeService;
	@Autowired
	HttpSession session;

	// 新增主題用 產生空白表單 預設讀取GET方法
	@RequestMapping(value = "/theme/addTitle", method = RequestMethod.GET)
	public String getAddNewThemeForm(Model model) {
		ThemeTitles tb = new ThemeTitles();
		model.addAttribute("themeBean", tb);
		return "theme/addTitle";
	}

	// 新增主題用 傳入表單上的資訊，在原來頁面新增內容，在JSP裡指定POST方法
	@RequestMapping(value = "/theme/addTitle", method = RequestMethod.POST)
	public String processAddNewThemeForm(@ModelAttribute("themeBean") ThemeTitles tb, HttpServletRequest request) {
		// 寫入圖片檔跟檔名
		MultipartFile titleImage = tb.getTitleImage();
		String originalFilename = titleImage.getOriginalFilename();
		tb.setFileName(originalFilename);
		// 讀取圖片副檔名
		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		@SuppressWarnings("unused")
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
		return "redirect:allTitles";
	}
	//後台頁面  連結到主題管理頁
	@RequestMapping("theme/back")
	public String back(){
		return "theme/back";
	}
	//後台頁面  連結
	@RequestMapping("theme/titleManagement")
	public String title(){
		return "theme/titleManagement";
	}
	//後台頁面  連結
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
	@RequestMapping("theme/allProducts")
	public String productList(Model model) {
		List<ThemeProducts> list = themeService.getAllProducts();
		model.addAttribute("products", list);
		return "theme/allProducts";	
	}
	
	//顯示全部行程內容
	@RequestMapping("/theme/allJourneys")
	public String journeyList(Model model) {
		List<ThemeJourneys> list = themeService.getAllJourneys();
		model.addAttribute("journeys", list);
		return "theme/allJourneys";	
	}

	//顯示全部報名表內容
	@RequestMapping("/theme/allApplications")
	public String applicationList(Model model) {
		List<ThemeApplications> list = themeService.getAllApplications();
		model.addAttribute("applications", list);
		return "theme/allApplications";	
	}
	
	//依申請表編號抓出單筆備註
	@RequestMapping("/theme/allApplications/{applicationId}")
	public String getExtra(@PathVariable("applicationId") Integer applicationId, Model model) {
	ThemeApplications List = themeService.getExtraByApplicationId(applicationId);
	System.out.println(List);
	model.addAttribute("applicationId", List);
	session.setAttribute("extra", List);		
	System.out.println("ggg"+List);//測試	
	return "theme/applicationExtra";
	}
	
	@RequestMapping("theme/reback")
	public String reback(){
		return "theme/reback";
	}
	
//	//簽收
//	@RequestMapping("theme/allApplications/terminate/{applicationId}")
//	public String updateTerminate(Model model) {
//		themeService.updateAllTerminate();
//		return "theme/allApplications";
//	}

}