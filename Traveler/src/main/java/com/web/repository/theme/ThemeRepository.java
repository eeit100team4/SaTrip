package com.web.repository.theme;

import java.util.List;

import com.web.model.theme.ThemeBean;
import com.web.model.theme.ThemeProducts;

public interface ThemeRepository {
	//介面(從第一個表格做查詢(查詢多筆))
	List<ThemeBean> getAllProducts();
	
	//介面(新增主題到第一個表格)
	void addThemeTitle(ThemeBean theme);
	
	//分類查詢 從固定title查該title下商品資料
	//找出所有title
	List<String> getAllTitles();
	//依title抓產品
	List<ThemeProducts> getProductsByTitle(String titleIName);
}
