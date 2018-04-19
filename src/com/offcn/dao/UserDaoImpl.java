package com.offcn.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.offcn.pojo.User;
@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sf;


	@Override
	public List<User> getlist() {
		// TODO Auto-generated method stub
		Session s = sf.getCurrentSession();
		Criteria cc = s.createCriteria(User.class);
		List<User> list = cc.list();
		return list;
	}

	@Override
	public void insertUser(User user) {
		// TODO Auto-generated method stub
		Session s = sf.getCurrentSession();
		s.save(user);
	}

}
