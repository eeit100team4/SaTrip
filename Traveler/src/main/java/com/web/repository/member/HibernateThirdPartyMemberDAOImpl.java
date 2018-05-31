package com.web.repository.member;

import java.io.IOException;
import java.sql.SQLException;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.member.MemberBean;
import com.web.model.member.ThirdPartyMemberBean;
import com.web.service.member.GlobalService;

@Repository
@Transactional
public  class HibernateThirdPartyMemberDAOImpl implements ThirdPartyMemberDAO {
	@Autowired
	SessionFactory factory;

	@Override
	public int saveThirdPartyMember(ThirdPartyMemberBean thirdPartyMember) throws SQLException {
		Session session = factory.getCurrentSession();
		int updateCount = 0;
		session.save(thirdPartyMember);
		updateCount = 1;
		session.flush();
		return updateCount;
		
	}

	@Override
	public String queryMemberId(String thirdPartyType, String thirdPartyId) throws IOException {
		String memberId="";
		ThirdPartyMemberBean tpmb = null;
		Session session = factory.getCurrentSession();
		tpmb = session.get(ThirdPartyMemberBean.class, thirdPartyId);
		if(tpmb!=null&& StringUtils.isNotBlank(tpmb.getMemberId())) {
			memberId=tpmb.getMemberId();
		}
		session.flush();
		return memberId;
	}
}
