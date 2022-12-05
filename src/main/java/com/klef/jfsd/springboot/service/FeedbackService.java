package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Feedback;


public interface FeedbackService
{
 public Feedback addFeedback(Feedback feedback);
 public Feedback viewFeedback(String uname);
 
 
}