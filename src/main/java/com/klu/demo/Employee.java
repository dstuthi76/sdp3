package com.klu.demo;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "reg")
public class Employee 
{
  @Id
  @Column(name="employee_id")
  private String id;
  
  @Column(name="employee_foodhabits")
  private String foodhabits;
  @Column(name="employee_healthissues")
    private String healthissues;
  @Column(name="employee_hinames")
  private String hinames;
   @Column(name="employee_pwd")
  private String pwd;
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }
  
  
  public String getHealthissues() {
    return healthissues;
  }
  public void setHealthissues(String healthissues) {
    this.healthissues = healthissues;
  }
  public String getHinames() {
	    return hinames;
	  }
	  public void setHinames( String hinames) {
	    this.hinames = hinames;
	  }
	  
  public String getFoodhabits() {
    return foodhabits;
  }
  public void setFoodhabits(String foodhabits) {
    this.foodhabits = foodhabits;
  }
  public String getPwd() {
	    return pwd;
	  }
	  public void setPwd( String pwd) {
	    this.pwd = pwd;
	  }
}