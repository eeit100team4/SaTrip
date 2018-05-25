package com.web.model.airplain;

import java.util.ArrayList;
import java.util.List;

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
			ExtraPriceBean result = query.uniqueResult();
		    if(result!=null) {
		    	return result.getExtraPrice();
		    }
		return null;
	}
	
	public ExtraPriceBean selectByidGetBean(String dept ,String arrv) {
		Query<ExtraPriceBean> query = sessionFactory.getCurrentSession()
				      .createQuery("FROM ExtraPriceBean WHERE dept=? AND arrv=?",ExtraPriceBean.class);
		    query.setParameter(0,dept).setParameter(1,arrv);
			ExtraPriceBean result = query.uniqueResult();
		    if(result!=null) {
		    	return result;
		    }
		return null;
	}
	
	public List<ExtraPriceBean> selectAll(){
		String HQL="FROM ExtraPriceBean";
		Session sesssion = sessionFactory.getCurrentSession();
		List<ExtraPriceBean> list= new ArrayList<>();
		list=sesssion.createQuery(HQL).getResultList();
		return list;
	}
	
	public void updateExtraPrice(ExtraPriceBean epBean) {
		sessionFactory.getCurrentSession().update(epBean);
	}
	
	public void updateExtraPrice(Integer id,Integer extraPirce ) {
		String HQL="UPDATE extraPrice set extraPrice = :extraPirce "  + 
	             "WHERE id = :id";
//		Session sesssion = sessionFactory.getCurrentSession();
//		sesssion.createQuery(HQL).setParameter("extraPirce", extraPirce).setParameter("id", id).executeUpdate();
	}

}
