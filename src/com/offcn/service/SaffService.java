package com.offcn.service;

import java.util.List;

import com.offcn.pojo.Staff;

public interface SaffService {
	public List<Staff> getlist(String searchKey,String deptid);
	public int delMuti(String[] ids);
	public void save(Staff st);
	public Staff getById(int sid);
}
