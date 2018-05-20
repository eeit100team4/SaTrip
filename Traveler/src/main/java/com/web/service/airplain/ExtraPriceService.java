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

	public ExtraPriceBean getExtraPrice(String dept,String arrv) {
		return epr.selectByid(dept,arrv);
	}
	
	public void updateExtraPrice(ExtraPriceBean epBean) {
		epr.updateExtraPrice(epBean);
	}
	
}