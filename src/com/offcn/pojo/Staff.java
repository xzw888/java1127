package com.offcn.pojo;

import java.util.HashSet;
import java.util.Set;


/**
 * Staff entity. @author MyEclipse Persistence Tools
 */

public class Staff  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Dept dept;
     private String loginname;
     private String password;
     private String bh;
     private String name;
     private Double wage;
     private String tel;
     private String email;
     private String sex;
     private String address;
     private String remark;
     private Integer userType;
     private Set records = new HashSet(0);
     private Set wages = new HashSet(0);


    // Constructors

    /** default constructor */
    public Staff() {
    }

    
    /** full constructor */
    public Staff(Dept dept, String loginname, String password, String bh, String name, Double wage, String tel, String email, String sex, String address, String remark, Integer userType, Set records, Set wages) {
        this.dept = dept;
        this.loginname = loginname;
        this.password = password;
        this.bh = bh;
        this.name = name;
        this.wage = wage;
        this.tel = tel;
        this.email = email;
        this.sex = sex;
        this.address = address;
        this.remark = remark;
        this.userType = userType;
        this.records = records;
        this.wages = wages;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Dept getDept() {
        return this.dept;
    }
    
    public void setDept(Dept dept) {
        this.dept = dept;
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

    public String getBh() {
        return this.bh;
    }
    
    public void setBh(String bh) {
        this.bh = bh;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public Double getWage() {
        return this.wage;
    }
    
    public void setWage(Double wage) {
        this.wage = wage;
    }

    public String getTel() {
        return this.tel;
    }
    
    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public String getSex() {
        return this.sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    public String getRemark() {
        return this.remark;
    }
    
    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getUserType() {
        return this.userType;
    }
    
    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public Set getRecords() {
        return this.records;
    }
    
    public void setRecords(Set records) {
        this.records = records;
    }

    public Set getWages() {
        return this.wages;
    }
    
    public void setWages(Set wages) {
        this.wages = wages;
    }
   








}