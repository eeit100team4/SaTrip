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
	

	public Integer selectByid() {
		Query<ExtraPriceBean> query = sessionFactory.getCurrentSession()
				      .createQuery("FROM ExtraPriceBean WHERE id=?",ExtraPriceBean.class);
			query.setParameter(0, 2);
		ExtraPriceBean q = query.uniqueResult();
		return q.getExtraPrice();
	}

}
