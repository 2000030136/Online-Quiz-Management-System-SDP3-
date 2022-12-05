package com.klef.jfsd.springboot.repository;



import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.User;
@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	
	@Query("from User where user_email=?1")
	public List<User> findByEMAIL(String email);
	
	@Query("from User where user_email=?1 and user_pass=?2")
	public User findByUsernamePassword(String username,String password);

	@Query("select e from User e where username=?1 and password=?2")
	public User checkstudlogin(String uname, String pwd);

	@Query("select username,score from User e  where username=?1")
	public User viewscoreStudent(String uname);
	
	@Query("select e from User e where username=?1")
	public User viewuser(String uname);



}
