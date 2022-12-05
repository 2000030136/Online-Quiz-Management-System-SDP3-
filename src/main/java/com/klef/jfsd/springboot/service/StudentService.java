package com.klef.jfsd.springboot.service;

import java.util.List;


import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.User;

public interface StudentService {
//	public User checkStudentlogin(String uname,String pwd);
	public List<User> viewallUsers();
	public User addStudent(User user);
//	public void deleteemployee(int id);
//	public Employee viewUsersbyid(int id);


	public User checkstudlogin(String uname, String pwd);
//	User viewscoreStudent(String uname);
	User viewuser(String uname);


	

	

}