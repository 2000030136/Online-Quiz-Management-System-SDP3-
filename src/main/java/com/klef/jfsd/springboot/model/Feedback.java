package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Feedback")
public class Feedback 
{
 
  @Id
  @GeneratedValue
   private int fdbkid;
  @Column(nullable = false,length = 200)
   private String rating;
  @Column(nullable = false,length = 200)
  private String usrnm;
  @Column(nullable = false,length = 10)
  private String feedback;
 



public int getFdbkid() {
 return fdbkid;
}



public void setFdbkid(int fdbkid) {
 this.fdbkid = fdbkid;
}



public String getRating() {
 return rating;
}



public void setRating(String rating) {
 this.rating = rating;
}



public String getFeedback() {
 return feedback;
}



public void setFeedback(String feedback) {
 this.feedback = feedback;
}
@Override
public String toString() {
 return "Feedback [id=" + fdbkid + ", rating=" + rating + ", feedback=" + feedback + "]";
}



public String getUsrnm() {
 return usrnm;
}



public void setUsrnm(String usrnm) {
 this.usrnm = usrnm;
}

}