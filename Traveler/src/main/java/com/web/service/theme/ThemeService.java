package com.web.service.theme;

import java.util.List;

import com.web.model.theme.ThemeBean;
import com.web.model.theme.ThemeProducts;

public interface ThemeService {
	//介面(查詢第一個表格())多筆
	List<ThemeBean> getAllProducts();
	
	void addThemeTitle(ThemeBean theme);
	
	//分類查詢 從固定title查該title下商品資料
	//找出所有title
	List<String> getAllTitles();
	//依title抓產品
	List<ThemeProducts> getProductsByTitle(String titleIName);
}

