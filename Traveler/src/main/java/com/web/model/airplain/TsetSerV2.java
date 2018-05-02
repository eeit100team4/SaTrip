package com.web.model.airplain;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TsetSerV2 {

	@Autowired
	private TestServ tsr;

	@Transactional
	public int addTese(JsonTestTickets jt) {
		System.out.println(jt.toString()+2);
		return tsr.addTest(jt);
	}
	
}
