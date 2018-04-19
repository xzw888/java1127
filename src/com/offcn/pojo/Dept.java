package com.offcn.pojo;

import java.util.HashSet;
import java.util.Set;


/**
 * Dept entity. @author MyEclipse Persistence Tools
 */

public class Dept  implements java.io.Serializable {


    // Fields    

     private Integer depid;
     private String depname;
     private String depNo;
     private String depdesc;
     private Integer depManageId;
     private String orther;
     private Set staffs = new HashSet(0);


    // Constructors

    /** default constructor */
    public Dept() {
    }

    
    /** full constructor */
    public Dept(String depname, String depNo, String depdesc, Integer depManageId, String orther, Set staffs) {
        this.depname = depname;
        this.depNo = depNo;
        this.depdesc = depdesc;
        this.depManageId = depManageId;
        this.orther = orther;
        this.staffs = staffs;
    }

   
    // Property accessors

    public Integer getDepid() {
        return this.depid;
    }
    
    public void setDepid(Integer depid) {
        this.depid = depid;
    }

    public String getDepname() {
        return this.depname;
    }
    
    public void setDepname(String depname) {
        this.depname = depname;
    }

    public String getDepNo() {
        return this.depNo;
    }
    
    public void setDepNo(String depNo) {
        this.depNo = depNo;
    }

    public String getDepdesc() {
        return this.depdesc;
    }
    
    public void setDepdesc(String depdesc) {
        this.depdesc = depdesc;
    }

    public Integer getDepManageId() {
        return this.depManageId;
    }
    
    public void setDepManageId(Integer depManageId) {
        this.depManageId = depManageId;
    }

    public String getOrther() {
        return this.orther;
    }
    
    public void setOrther(String orther) {
        this.orther = orther;
    }

    public Set getStaffs() {
        return this.staffs;
    }
    
    public void setStaffs(Set staffs) {
        this.staffs = staffs;
    }
   








}