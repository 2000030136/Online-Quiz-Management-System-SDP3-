package com.klef.jfsd.springboot.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;


@Repository
public interface EmployeeRepository extends CrudRepository<Employee, Integer>
{
	@Query("select e from Employee e where username=?1 and password=?2")
	public Employee checkemplogin(String uname,String pwd);
	
	@Query("select e from Employee e where username=?1")
	public Employee viewemployee(String uname);
	
	@Transactional
	@Modifying
	@Query("update Employee e set e.password=?1 where e.password=?2 and e.username=?3")
	public int updateemppassword(String empnewpwd,String empoldpwd,String empuname);
}
