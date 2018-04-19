package com.offcn.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offcn.dao.StaffDao;
import com.offcn.pojo.Staff;

@Service
public class SaffServiceImpl implements SaffService{
	
	@Autowired
	StaffDao sdao;
	
	@Override
	public List<Staff> getlist(String searchKey,String deptid) {
		// TODO Auto-generated method stub
		return sdao.getlist(searchKey,deptid);
	}

	@Override
	public int delMuti(String[] ids) {
		// TODO Auto-generated method stub
		List<Integer> idslist=new ArrayList<Integer>();
		for(String id:ids){
			idslist.add(Integer.parseInt(id));
		}
		return sdao.delmuti(idslist);
	}

	@Override
	public void save(Staff st) {
		// TODO Auto-generated method stub
		sdao.save(st);
	}

	@Override
	public Staff getById(int sid) {
		// TODO Auto-generated method stub
		return sdao.getById(sid);
	}
	
	

}
