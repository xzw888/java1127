package com.offcn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offcn.dao.UserDao;
import com.offcn.pojo.User;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao uDao;


	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		return uDao.getlist();
	}

	@Override
	public void insertUser(User u) {
		// TODO Auto-generated method stub
         uDao.insertUser(u);
         /*String str=null;
         System.out.println(str.toString());*/
	}

}
