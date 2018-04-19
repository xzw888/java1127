package com.offcn.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.offcn.pojo.Dept;
import com.offcn.pojo.Staff;
import com.offcn.service.DeptService;
import com.offcn.service.SaffService;
import com.opensymphony.xwork2.ModelDriven;

public class StaffAction extends BaseAction implements ModelDriven<Staff>{
   
	@Autowired
	SaffService service;
	@Autowired
	DeptService dService;
	String searchKey;
	String deptid;
	int sid;
	Staff staff=new Staff();
	
	List<Staff> slist;
	List<Dept> dlist;
	
   public String stafflist(){
	   slist = service.getlist(searchKey,deptid);
	   dlist = dService.getlist();
	  return "list";
   }
   
   
   public String deleteStaff(){
	   String[] idsarr = req.getParameterValues("selectFlag");
	   service.delMuti(idsarr);
	   return "del";
   }
   
   //
   public String addStaff(){
	   dlist = dService.getlist();
	   return "toAdd";
   }
   
   public String saveStaff(){
	   service.save(staff);
	   return "save";
   }
   
   //
   public String editStaff(){
	   dlist = dService.getlist();
	   staff=service.getById(sid);
	   return "toEdit";
   }
public List<Staff> getSlist() {
	return slist;
}

public void setSlist(List<Staff> slist) {
	this.slist = slist;
}


public List<Dept> getDlist() {
	return dlist;
}


public void setDlist(List<Dept> dlist) {
	this.dlist = dlist;
}


public String getSearchKey() {
	return searchKey;
}


public void setSearchKey(String searchKey) {
	this.searchKey = searchKey;
}


public String getDeptid() {
	return deptid;
}


public void setDeptid(String deptid) {
	this.deptid = deptid;
}


public Staff getStaff() {
	return staff;
}


public int getSid() {
	return sid;
}


public void setSid(int sid) {
	this.sid = sid;
}


@Override
public Staff getModel() {
	// TODO Auto-generated method stub
	return staff;
}
   
   
   
}
