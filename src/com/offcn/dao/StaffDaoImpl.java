package com.offcn.dao;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.offcn.pojo.Staff;
@Repository
public class StaffDaoImpl implements StaffDao {

	@Autowired
	SessionFactory sf;
	
	@Override
	public List<Staff> getlist(String searchKey,String deptid) {
		// TODO Auto-generated method stub
		Session s = sf.getCurrentSession();
		String hql=" from Staff as s where 1=1";
		if(StringUtils.isNotEmpty(searchKey)){
			hql+=" and s.name like:name";
		}
		if(StringUtils.isNotEmpty(deptid)){
			hql+=" and s.dept.depid=:depid";
		}
		Query q = s.createQuery(hql);

		if(StringUtils.isNotEmpty(searchKey)){
			q.setString("name", "%"+searchKey+"%");
		}
		if(StringUtils.isNotEmpty(deptid)){
			q.setString("depid", deptid);
		}
		
		List<Staff> list = q.list();
		return list;
	}

	@Override
	public int delmuti(List<Integer> ids) {
		// TODO Auto-generated method stub
		Session s = sf.getCurrentSession();
		Query q=s.createQuery(" delete from Staff as s where id in:ids");
		q.setParameterList("ids", ids);
		int row=q.executeUpdate();
		return row;
	}

	@Override
	public void save(Staff s) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		session.save(s);
	}

	@Override
	public Staff getById(int sid) {
		// TODO Auto-generated method stub
		Session session = sf.getCurrentSession();
		Staff staff = session.get(Staff.class, sid);
		return staff;
	}

}
