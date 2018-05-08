package com.web.service.impl.theme;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.theme.ThemeBean;
import com.web.repository.theme.ThemeRepository;
import com.web.service.theme.ThemeService;

@Service
public class ThemeServiceImpl implements ThemeService {
	
	@Autowired
	private ThemeRepository themeRepository;
	//查詢第一個表格(多筆)
	@Transactional
	@Override
	public List<ThemeBean> getAllProducts() {		
		return themeRepository.getAllProducts();		
	}
	@Transactional
	@Override
	public void addThemeTitle(ThemeBean Theme) {
		themeRepository.addThemeTitle(Theme);
	}
}
