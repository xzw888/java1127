package com.offcn.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.offcn.pojo.User;
import com.offcn.service.UserService;

public class UserAction {
   
	@Autowired
	UserService uService;
	List<User> list;
	User user;



	//@Action(value="u_list",results={@Result(name="list",location="/index.jsp")})
	public String list(){
		list = uService.list();
		return "list";
	}
	
	//@Action(value="u_add",results={@Result(name="add",type="redirectAction",location="u_list")})
	public String add(){
		uService.insertUser(user);
		return "add";
	}


	public List<User> getList() {
		return list;
	}


	public void setList(List<User> list) {
		this.list = list;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}
	
	
}
