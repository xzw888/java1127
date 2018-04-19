package com.offcn.pojo;



/**
 * Wage entity. @author MyEclipse Persistence Tools
 */

public class Wage  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Staff staff;
     private Integer depid;
     private Integer level;
     private Double basepay;
     private Double bonus;
     private Double realpay;
     private Integer month;


    // Constructors

    /** default constructor */
    public Wage() {
    }

	/** minimal constructor */
    public Wage(Integer id) {
        this.id = id;
    }
    
    /** full constructor */
    public Wage(Integer id, Staff staff, Integer depid, Integer level, Double basepay, Double bonus, Double realpay, Integer month) {
        this.id = id;
        this.staff = staff;
        this.depid = depid;
        this.level = level;
        this.basepay = basepay;
        this.bonus = bonus;
        this.realpay = realpay;
        this.month = month;
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

    public Integer getDepid() {
        return this.depid;
    }
    
    public void setDepid(Integer depid) {
        this.depid = depid;
    }

    public Integer getLevel() {
        return this.level;
    }
    
    public void setLevel(Integer level) {
        this.level = level;
    }

    public Double getBasepay() {
        return this.basepay;
    }
    
    public void setBasepay(Double basepay) {
        this.basepay = basepay;
    }

    public Double getBonus() {
        return this.bonus;
    }
    
    public void setBonus(Double bonus) {
        this.bonus = bonus;
    }

    public Double getRealpay() {
        return this.realpay;
    }
    
    public void setRealpay(Double realpay) {
        this.realpay = realpay;
    }

    public Integer getMonth() {
        return this.month;
    }
    
    public void setMonth(Integer month) {
        this.month = month;
    }
   








}