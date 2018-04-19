package com.offcn.service;

import java.util.List;

import com.offcn.pojo.Dept;

public interface DeptService {
	public List<Dept> getlist();
	public int delMuti(String[] ids);
	Dept getById(int sid);
	
}
