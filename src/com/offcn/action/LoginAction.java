package com.offcn.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.offcn.pojo.Manager;
import com.offcn.service.MagerService;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends BaseAction implements ModelDriven<Manager>{
   
	Manager mager=new Manager();
	@Autowired
	MagerService service;
	
   public String login(){
	 Manager user=service.login(mager);
	 if(user==null){
		return "login"; 
	 }else{
		session.put("user", user);
		return "index";
	 }
   }
   
    public Manager getMager() {
	return mager;
    }

	//获取jsp页面提交的数据
	@Override
	public Manager getModel() {
		// TODO Auto-generated method stub
		return mager;
	}
}
