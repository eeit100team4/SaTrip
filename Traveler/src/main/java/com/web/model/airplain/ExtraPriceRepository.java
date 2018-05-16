package com.web.model.airplain;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ExtraPriceRepository {

	@Autowired
	SessionFactory sessionFactory;
	

	public Integer selectByid(String dept ,String arrv) {
		Query<ExtraPriceBean> query = sessionFactory.getCurrentSession()
				      .createQuery("FROM ExtraPriceBean WHERE dept=? AND arrv=?",ExtraPriceBean.class);
		    query.setParameter(0,dept).setParameter(1,arrv);
		ExtraPriceBean q = query.uniqueResult();
		return q.getExtraPrice();
	}

}
