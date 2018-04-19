package com.offcn.service;

import java.util.List;

import com.offcn.pojo.User;

public interface UserService {
   public List<User> list();
   public void insertUser(User u);
}
