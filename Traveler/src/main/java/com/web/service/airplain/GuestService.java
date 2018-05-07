package com.web.service.airplain;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.airplain.GuestBean;
import com.web.model.airplain.GuestRepository;

@Service
public class GuestService {
	@Autowired
	GuestRepository gr;
	@Transactional
	public int addGuest(GuestBean gb) {
		int reId=gr.addGuest(gb);
		return reId;
	}
	
}
