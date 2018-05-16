package com.web.repository.commodity;

import java.util.List;

import com.web.store.model.commodity.ClientBean;
import com.web.store.model.commodity.MemberBean;


public interface ClientDAO {

	List<ClientBean> getAllData();

	ClientBean getClientById(int Id);

	void addClient(ClientBean bean);

//	ClientBean getMemberId(String Id);
	
	MemberBean getMemberById(String memberId);
	List<MemberBean> getMemberAllData();
	
	void addMemberA (MemberBean mb);
}
