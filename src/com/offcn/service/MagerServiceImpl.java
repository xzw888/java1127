package com.offcn.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offcn.dao.MagerDao;
import com.offcn.pojo.Manager;

@Service
public class MagerServiceImpl implements MagerService {

	@Autowired
	MagerDao mdao;
	
	@Override
	public Manager login(Manager mger) {
		// TODO Auto-generated method stub
		return mdao.login(mger);
	}

}
