package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employee_table")
public class Employee 
{
  @Id
  @GeneratedValue
   private int id;
  @Column(nullable = false,length = 200)
   private String name;
  @Column(nullable = false,length = 10)
   private String gender;
  @Column(nullable = false,length = 10)
  private String dateofbirth;
  @Column(nullable = false,length = 200)
  private String department;
  @Column(nullable = false,length = 200)
   private String designation;
  @Column(nullable = false,precision = 10,scale = 4)
   private double salary;
  @Column(nullable = false,length = 200)
   private String location;
  @Column(nullable = false,unique = true,length = 200)
  private String emailid;
  @Column(nullable = false,unique = true,length = 200)
   private String username;
  @Column(nullable = false,length = 200)
   private String password;
  @Column(nullable = false,length = 200)
  private String contactno;
   
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getDesignation() {
	return designation;
}
public void setDesignation(String designation) {
	this.designation = designation;
}
public double getSalary() {
	return salary;
}
public void setSalary(double salary) {
	this.salary = salary;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public String getDateofbirth() {
	return dateofbirth;
}
public void setDateofbirth(String dateofbirth) {
	this.dateofbirth = dateofbirth;
}
public String getContactno() {
	return contactno;
}
public void setContactno(String contactno) {
	this.contactno = contactno;
}
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
@Override
public String toString() {
	return "Employee [id=" + id + ", name=" + name + ", gender=" + gender + ", dateofbirth=" + dateofbirth
			+ ", department=" + department + ", designation=" + designation + ", salary=" + salary + ", location="
			+ location + ", emailid=" + emailid + ", username=" + username + ", password=" + password + ", contactno="
			+ contactno + "]";
}
}
