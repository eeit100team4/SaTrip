package com.web.service.commodity.impl;

import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.model.commodity.ClientBean;
import com.web.store.model.commodity.CommodityBean;
import com.web.store.model.commodity.MemberBean;
import com.web.store.repository.commodity.ClientDAO;
import com.web.store.repository.commodity.CommodityDAO;
import com.web.store.service.commodity.ClientService;


@Service
@Transactional
public class ClientServiceAll implements ClientService {

	@Autowired
	private ClientDAO clientDao;
//	@Autowired
//	private CommodityServiceAll commodityServiceAll;
//	@Autowired
//	private CommodityDAO commodityDAO;
	
	@Override
	public List<ClientBean> getAllData() {
	
		return clientDao.getAllData();
	}

	@Override
	public ClientBean getClientById(int Id) {
		
		return clientDao.getClientById(Id);
	}

	@Override
	public void addClient(ClientBean bean) {
		
			
		
           clientDao.addClient(bean);
	}

	@Override
	public ClientBean getMemberId(int Id) {
		
		return clientDao.getClientById(Id);
	}
	
	@Override
	public MemberBean getMemberById(String memberId) {
		
		return clientDao.getMemberById(memberId);
		
	}
	
	@Override
	public List<MemberBean> getMemberAllData(){
		
		return clientDao.getMemberAllData();
	}

	@Override
	public void addMemberA (MemberBean mb) {
		 clientDao.addMemberA(mb);
	}
	
}
