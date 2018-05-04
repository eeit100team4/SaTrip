package com.web.service.theme;

import java.util.List;

import com.web.model.theme.ThemeBean;

public interface ThemeService {
	//介面(查詢第一個表格())多筆
	List<ThemeBean> getAllProducts();
	
	void addThemeTitle(ThemeBean theme);
}

