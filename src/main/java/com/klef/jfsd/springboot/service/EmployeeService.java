package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.User;

public interface EmployeeService
{
	public Employee addemployee(Employee employee);
	public Employee checkemplogin(String uname,String pwd);
	public Employee viewemployee(String uname);
	public int changeemployeepassword(String empoldpwd,String empnewpwd,String euname);
	
}
