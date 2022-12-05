package com.klef.jfsd.springboot.controller;



import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.UserRepository;

@Controller
public class UserController 
{
	@Autowired
	UserRepository urepo;
	
	@RequestMapping("/Quiz1")
	public String quiz()
	{
		return "Quiz1";
	}
	@RequestMapping("/Quiz2")
	public String quiz2()
	{
		return "Quiz2";
	}
	@RequestMapping("/QuizHome")
	public String home()
	{
		return "employeehome";
	}
	
	@RequestMapping("/signup")
	public String getSignup()
	{
		return "signup";
	}
	
	@RequestMapping("/login")
	public String getLogin()
	{
		return "login";
	}
//	@PostMapping("/addUser")
//	public ModelAndView addUser(@RequestParam("user_email") String user_email, User user)
//	{
//		ModelAndView mv=new ModelAndView("success");
//		List<User> list=urepo.findByEMAIL(user_email);
//		
//		if(list.size()!=0)
//		{
//		mv.addObject("message", "Oops!  There is already a user registered with the email provided.");
//		
//		}
//		else
//		{
//		urepo.save(user);
//		mv.addObject("message","User has been successfully registered.");
//		}
//		
//		return mv;
//	}

	
	@PostMapping("/login")
	public String login_user(@RequestParam("username") String username,@RequestParam("password") String password,
			HttpSession session,ModelMap modelMap)
	{
		
	User auser=urepo.findByUsernamePassword(username, password);
	
	if(auser!=null)
	{
		String uname=auser.getUsername();
		String upass=auser.getPassword();
	
		if(username.equalsIgnoreCase(uname) && password.equalsIgnoreCase(upass)) 
		{
			session.setAttribute("username",username);
			return "dummy";
		}
		else 
		{
			modelMap.put("error", "Invalid Account");
			return "login";
		}
	}
	else
	{
		modelMap.put("error", "Invalid Account");
		return "login";
	}
	
	}
	
	@GetMapping(value = "/logout")
	public String logout_user(HttpSession session)
	{
		session.removeAttribute("username");
		session.invalidate();
		return "redirect:/login";
	}
	
	
}
