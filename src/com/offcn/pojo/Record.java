package com.offcn.pojo;

import java.sql.Timestamp;


/**
 * Record entity. @author MyEclipse Persistence Tools
 */

public class Record  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Staff staff;
     private Integer type;
     private Timestamp starttime;
     private Timestamp endtime;
     private Timestamp inserttime;
     private String reason;
     private Integer isPass;
     private Integer deptid;


    // Constructors

    /** default constructor */
    public Record() {
    }

    
    /** full constructor */
    public Record(Staff staff, Integer type, Timestamp starttime, Timestamp endtime, Timestamp inserttime, String reason, Integer isPass, Integer deptid) {
        this.staff = staff;
        this.type = type;
        this.starttime = starttime;
        this.endtime = endtime;
        this.inserttime = inserttime;
        this.reason = reason;
        this.isPass = isPass;
        this.deptid = deptid;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Staff getStaff() {
        return this.staff;
    }
    
    public void setStaff(Staff staff) {
        this.staff = staff;
    }

    public Integer getType() {
        return this.type;
    }
    
    public void setType(Integer type) {
        this.type = type;
    }

    public Timestamp getStarttime() {
        return this.starttime;
    }
    
    public void setStarttime(Timestamp starttime) {
        this.starttime = starttime;
    }

    public Timestamp getEndtime() {
        return this.endtime;
    }
    
    public void setEndtime(Timestamp endtime) {
        this.endtime = endtime;
    }

    public Timestamp getInserttime() {
        return this.inserttime;
    }
    
    public void setInserttime(Timestamp inserttime) {
        this.inserttime = inserttime;
    }

    public String getReason() {
        return this.reason;
    }
    
    public void setReason(String reason) {
        this.reason = reason;
    }

    public Integer getIsPass() {
        return this.isPass;
    }
    
    public void setIsPass(Integer isPass) {
        this.isPass = isPass;
    }

    public Integer getDeptid() {
        return this.deptid;
    }
    
    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
    }
   








}