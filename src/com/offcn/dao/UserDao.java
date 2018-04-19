package com.offcn.dao;

import java.util.List;

import com.offcn.pojo.User;

public interface UserDao {
   public List<User> getlist();
   public void insertUser(User user);
}
