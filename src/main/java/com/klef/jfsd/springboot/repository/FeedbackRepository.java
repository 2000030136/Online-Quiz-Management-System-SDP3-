package com.klef.jfsd.springboot.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Feedback;


@Repository
public interface FeedbackRepository  extends CrudRepository<Feedback, Integer>
{
 
 @Query("select e from Feedback e where usrnm=?1")
 public Feedback viewFeedback(String uname);

 
 
}