package com.offcn.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offcn.dao.DeptDao;
import com.offcn.pojo.Dept;
import com.offcn.pojo.Staff;
@Service
public class DeptServiceImpl implements DeptService {

	@Autowired
	DeptDao dao;
	
	@Override
	public List<Dept> getlist() {
		// TODO Auto-generated method stub
		return dao.getlist();
	}
	@Override
	public int delMuti(String[] ids) {
		// TODO Auto-generated method stub
		List<Integer> idslist=new ArrayList<Integer>();
		for(String id:ids){
			idslist.add(Integer.parseInt(id));
		}
		return dao.delmuti(idslist);
	}

	@Override
	public Dept getById(int sid) {
		// TODO Auto-generated method stub
		return dao.getById(sid);
	}
}
