package com.web.repository.contactus;

import java.util.List;

import com.web.model.contactus.ContactusBean;
import com.web.model.theme.ThemeBean;

public interface ContactusRepository {

	void addCustomerOpinion(ContactusBean contactus);
	void update(ContactusBean contactus);
	List<ContactusBean> getAllContactus();
//	void updateFeedback(String name, String sex);
}
