package com.web.service.impl.theme;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.theme.ThemeTitles;
import com.web.model.theme.ThemeApplications;
import com.web.model.theme.ThemeJourneys;
import com.web.model.theme.ThemeProducts;
import com.web.repository.theme.ThemeRepository;
import com.web.service.theme.ThemeService;

@Service
public class ThemeServiceImpl implements ThemeService {
	
	@Autowired
	private ThemeRepository themeRepository;
	//查詢第一個表格(多筆)
	@Transactional
	@Override
	public List<ThemeTitles> getTitles() {		
		return themeRepository.getTitles();		
	}
	@Transactional
	@Override
	public void addThemeTitle(ThemeTitles Theme) {
		themeRepository.addThemeTitle(Theme);
	}
	//分類查詢 從固定title查該title下商品資料
	//找出所有title
	@Transactional
	@Override
	public List<String> getAllTitles(){
		return themeRepository.getAllTitles();	
	}
	//依title抓產品
	@Transactional
	@Override
	public List<ThemeProducts> getProductsByTitle(String titleName){
		return themeRepository.getProductsByTitle(titleName);		
	}
	//顯示所有商品資料
	@Transactional
	@Override
	public List<ThemeProducts> getAllProducts(){
		return themeRepository.getAllProducts();		
	}
	//顯示所有行程內容
	@Transactional
	@Override
	public List<ThemeJourneys> getAllJourneys(){
		return themeRepository.getAllJourneys();		
	}
	//顯示所有報名表內容
	@Transactional
	@Override
	public List<ThemeApplications> getAllApplications(){
		return themeRepository.getAllApplications();		
	}
}
