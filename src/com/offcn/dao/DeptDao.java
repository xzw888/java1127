package com.offcn.dao;

import java.util.List;

import com.offcn.pojo.Dept;

public interface DeptDao {
   public List<Dept> getlist();

int delmuti(List<Integer> ids);

Dept getById(int sid);
}
