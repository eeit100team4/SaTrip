package com.web.service.theme;

import java.util.List;

import com.web.model.theme.ThemeBean;
import com.web.model.theme.ThemeJourneys;
import com.web.model.theme.ThemeProducts;

public interface ThemeService {
	//介面 顯示全部主題
	List<ThemeBean> getTitles();
	
	void addThemeTitle(ThemeBean theme);
	
	//分類查詢 從固定title查該title下商品資料
	//找出所有title
	List<String> getAllTitles();
	//依title抓產品
	List<ThemeProducts> getProductsByTitle(String titleIName);
	
	//顯示所有商品資料
	List<ThemeProducts> getAllProducts();
	
	//顯示所有行程內容
	List<ThemeJourneys> getAllJourneys();
}

