package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.UserRepository;
@Service
public  class StudentServiceImpl implements StudentService{

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public User addStudent(User user)
	{
		return userRepository.save(user);
		
	}
	
	@Override
	public List<User> viewallUsers() 
	{
		return (List<User>) userRepository.findAll();
	}
//	@Override
//	public User viewscoreStudent(String uname) 
//	{
//		
//		return userRepository.viewscoreStudent(uname);
//	}

	@Override
	public User viewuser(String uname) 
	{
		
		return userRepository.viewuser(uname);
	}

	@Override
	public User checkstudlogin(String uname, String pwd) {
		return userRepository.checkstudlogin(uname, pwd);
	}


//	@Override
//	public Employee viewUsersbyid(int id) {
//		// TODO Auto-generated method stub
//		return null;
//	}

}
