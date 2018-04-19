package com.offcn.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.offcn.pojo.Dept;
import com.offcn.service.DeptService;
import com.opensymphony.xwork2.ModelDriven;

public class DeptAction extends BaseAction implements ModelDriven<Dept>{
	List<Dept> dlist;
	@Autowired
	DeptService dService;
	int sid;
	Dept dept = new Dept();
	@Override
	public Dept getModel() {
		// TODO Auto-generated method stub
		return null;
	}
	public String depList(){
		dlist = dService.getlist();
		return "list";
	}
	public List<Dept> getDlist() {
		return dlist;
	}
	public void setDlist(List<Dept> dlist) {
		this.dlist = dlist;
	}
	public String delteDept(){
		   String[] idsarr = req.getParameterValues("selectFlag");
		   dService.delMuti(idsarr);
		   return "del";
	 }
	 public String editDept(){
		   dlist = dService.getlist();
		   dept=dService.getById(sid);
		   return "toEdit";
	   }
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public Dept getDept() {
		return dept;
	}
	 
}
