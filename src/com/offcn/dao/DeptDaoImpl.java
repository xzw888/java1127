package com.offcn.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.offcn.pojo.Dept;
import com.offcn.pojo.Staff;
@Repository
public class DeptDaoImpl implements DeptDao {

	@Autowired
	SessionFactory sf;
	
	@Override
	public List<Dept> getlist() {
		// TODO Auto-generated method stub
		Session s = sf.getCurrentSession();
		Criteria cc = s.createCriteria(Dept.class);
		return cc.list();
	}
	@Override
	public int delmuti(List<Integer> ids) {
		// TODO Auto-generated method stub
		Session s = sf.getCurrentSession();
		Query q=s.createQuery(" delete from Dept where id in:ids");
		q.setParameterList("ids", ids);
		int row=q.executeUpdate();
		return row;
	}
	@Override
	public Dept getById(int sid) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		Dept dept = session.get(Dept.class, sid);
		return dept;
	}
}
