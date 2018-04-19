package com.offcn.pojo;



/**
 * Manager entity. @author MyEclipse Persistence Tools
 */

public class Manager  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String loginname;
     private String password;
     private Integer deptid;
     private Double wage;
     private Integer userType;


    // Constructors

    /** default constructor */
    public Manager() {
    }

    
    /** full constructor */
    public Manager(String loginname, String password, Integer deptid, Double wage, Integer userType) {
        this.loginname = loginname;
        this.password = password;
        this.deptid = deptid;
        this.wage = wage;
        this.userType = userType;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoginname() {
        return this.loginname;
    }
    
    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getDeptid() {
        return this.deptid;
    }
    
    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
    }

    public Double getWage() {
        return this.wage;
    }
    
    public void setWage(Double wage) {
        this.wage = wage;
    }

    public Integer getUserType() {
        return this.userType;
    }
    
    public void setUserType(Integer userType) {
        this.userType = userType;
    }
   








}