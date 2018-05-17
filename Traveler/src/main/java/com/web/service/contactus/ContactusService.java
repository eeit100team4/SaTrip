package com.web.service.contactus;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.contactus.ContactusBean;



public interface ContactusService {

	
	
	void update(ContactusBean contactus);
	List<ContactusBean> getAllContactus();
	List<ContactusBean> getAllFeedback();
	void addCustomerOpinion(ContactusBean contactus);
	void updateAllFeedback();
	
}
