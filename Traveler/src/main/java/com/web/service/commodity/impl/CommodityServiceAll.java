package com.web.service.commodity.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.commodity.CommodityBean;
import com.web.repository.commodity.CommodityDAO;
import com.web.service.commodity.CommodityService;


@Service
@Transactional
public class CommodityServiceAll implements CommodityService {

	@Autowired
	private CommodityDAO commoditydao;

	@Override
	public List<CommodityBean> getAllData() {
		
		return commoditydao.getAllData();
	}

	@Override
	public List<String> getAllKinds() {
		
		return commoditydao.getAllKinds();
	}
	
	@Override
	public void addCommodity(CommodityBean bean) {
		commoditydao.addCommodity(bean);
		
	}
	
	@Override
	public CommodityBean getCommodityById(int commodityid) {
		
		return commoditydao.getCommodityById(commodityid);
	}

	
	@Override
	public List<CommodityBean> getCommodityByKind(String kind) {
	
		return commoditydao.getCommodityByKind(kind);
	}


	@Override
	public void update(CommodityBean bean ) {	
		

		commoditydao.update(bean);
	}
	

}
