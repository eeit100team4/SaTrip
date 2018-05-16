package com.web.repository.theme;

import java.util.List;

import com.web.model.theme.ThemeTitles;
import com.web.model.theme.ThemeJourneys;
import com.web.model.theme.ThemeProducts;

public interface ThemeRepository {
	//顯示所有種類名稱
	List<ThemeTitles> getTitles();
	
	//介面(新增主題到第一個表格)
	void addThemeTitle(ThemeTitles theme);
	
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
