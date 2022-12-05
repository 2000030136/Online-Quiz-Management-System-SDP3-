package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.EmployeeRepository;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public  class EmployeeServiceImpl implements EmployeeService
{
	@Autowired
	private EmployeeRepository employeeRepository;

	@Override
	public Employee addemployee(Employee employee)
	{
		return employeeRepository.save(employee);
		
	}

	@Override
	public Employee checkemplogin(String uname, String pwd) 
	{
		return employeeRepository.checkemplogin(uname, pwd);
	}

	@Override
	public Employee viewemployee(String uname) 
	{
		
		return employeeRepository.viewemployee(uname);
	}

	@Override
	public int changeemployeepassword(String empoldpwd, String empnewpwd, String euname)
	{
		return employeeRepository.updateemppassword(empnewpwd, empoldpwd, euname);
	}





}
