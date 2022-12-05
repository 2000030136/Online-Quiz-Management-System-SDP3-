package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;
import com.klef.jfsd.springboot.repository.FeedbackRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private EmployeeRepository employeeRepository;
	@Autowired
	private FeedbackRepository feedbackRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadnminlogin(uname, pwd);
	}

	@Override
	public List<Employee> viewallemployees() 
	{
		return (List<Employee>) employeeRepository.findAll();
	}

	@Override
	public void deleteemployee(int id)
	{
		employeeRepository.deleteById(id);
		
	}

	@Override
	public Employee viewemployeebyid(int id)
	{
		return employeeRepository.findById(id).get();
	}
	
	@Override
	 public List<Feedback> viewallfeedbacks() {
	  // TODO Auto-generated method stub
	  return (List<Feedback>) feedbackRepository.findAll();
	 }
}

