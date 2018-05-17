package com.web.service.commodity;

import java.util.List;

import com.web.model.commodity.CommodityBean;



public interface CommodityService {
	List<CommodityBean> getAllData(); 

	List<String> getAllKinds();
	
	 void addCommodity(CommodityBean bean);
	CommodityBean getCommodityById(int commodityid);
	
	
	List<CommodityBean> getCommodityByKind(String kind);


	void update(CommodityBean bean);
	
	 void addCommodityA(CommodityBean bean);

//	 
//	void delete(String title);
}
