package com.offcn.dao;

import java.util.List;

import com.offcn.pojo.Staff;

public interface StaffDao {
   public List<Staff> getlist(String searchKey,String deptid);
   public int delmuti(List<Integer> ids);
   public void save(Staff s);
   public Staff getById(int sid);
}
