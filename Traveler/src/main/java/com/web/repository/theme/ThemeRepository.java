package com.web.repository.theme;

import java.util.List;

import com.web.model.theme.ThemeBean;

public interface ThemeRepository {
	//介面(從第一個表格做查詢(查詢多筆))
	List<ThemeBean> getAllProducts();
	//介面(新增主題到第一個表格)
	void addThemeTitle(ThemeBean theme);
}
