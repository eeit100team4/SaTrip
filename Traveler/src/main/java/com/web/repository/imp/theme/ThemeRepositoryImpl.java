package com.web.repository.imp.theme;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.model.theme.ThemeBean;
import com.web.model.theme.ThemeProducts;
import com.web.repository.theme.ThemeRepository;
@Repository
public class ThemeRepositoryImpl implements ThemeRepository {
	@Autowired
	SessionFactory factory;
	//從第一個表格做查詢(查詢多筆)
	@Override
	@SuppressWarnings("unchecked")
	public List<ThemeBean> getAllProducts() {
		String hql = "FROM ThemeBean";
		Session session = null;
		List<ThemeBean>list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	//新增主題到第一個表格
	@Override
	public void addThemeTitle(ThemeBean Theme){
		Session session = factory.getCurrentSession();
		session.save(Theme);
	}
	//分類查詢 從固定title查該title下商品資料
	//找出所有title
	public List<String> getAllTitles(){
		String hql = "SELECT DISTINCT titleName FROM ThemeBean";
		Session session = factory.getCurrentSession();
		List<String> list = new ArrayList<>();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	//依title抓產品
	public List<ThemeProducts> getProductsByTitle(String titleName){
		String hql = "FROM ThemeProducts WHERE titleName = :titleName ";
		List<ThemeProducts> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("titleName",titleName).getResultList();
		return list;
	};
}
