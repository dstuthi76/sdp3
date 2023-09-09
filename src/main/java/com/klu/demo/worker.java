package com.klu.demo;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "worker")
public class worker 
{
  @Id
  @Column(name="employee_id")
  private String id;
  
  @Column(name="employee_email")
  private String email;
 
   @Column(name="employee_pwd")
  private String pwd;
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }
  
  
  
  public String getEmail() {
	    return email;
	  }
	  public void setEmail( String email) {
	    this.email = email;
	  }
	  
  
  public String getPwd() {
	    return pwd;
	  }
	  public void setPwd( String pwd) {
	    this.pwd = pwd;
	  }
}