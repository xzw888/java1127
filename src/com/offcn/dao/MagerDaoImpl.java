package com.offcn.dao;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.offcn.pojo.Manager;
@Repository
public class MagerDaoImpl implements MagerDao{
  
	@Autowired
	SessionFactory sf;
	
	@Override
	public Manager login(Manager m) {
		// TODO Auto-generated method stub
		Session s = sf.getCurrentSession();
		/*Query q=s.createQuery(" from Manager as m where m.loginname=? and m.password=:pwd");
		q.setParameter(0, m.getLoginname());
		q.setString("pwd", m.getPassword());
		Manager loginm1=(Manager) q.uniqueResult();*/
		
		Criteria cc = s.createCriteria(Manager.class);
		cc.add(Restrictions.and(Restrictions.eq("loginname", m.getLoginname()), Restrictions.eq("password", m.getPassword())));
		Manager loginm=(Manager) cc.uniqueResult();
		return loginm;
	}

}
