package com.web.service.airplain;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.airplain.ExtraPriceBean;
import com.web.model.airplain.ExtraPriceRepository;

@Service
@Transactional
public class ExtraPriceService {
	
	@Autowired
	ExtraPriceRepository epr;

	public Integer getExtraPrice() {
		Integer result = epr.selectByid();
		System.out.println(result);
	  return  result;
	}
	
}
