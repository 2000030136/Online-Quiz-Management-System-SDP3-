package com.klef.jfsd.springboot.controller;

import java.util.List;

import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.UserRepository;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.EmployeeService;
import com.klef.jfsd.springboot.service.FeedbackService;
import com.klef.jfsd.springboot.service.StudentService;

@Controller
public class ClientController

{
	@Autowired
	UserRepository urepo;
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private FeedbackService feedbackService;
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private StudentService studentService;
	
	@GetMapping("/")
	public String mainhomedemo()
	{
		return "index";
	}
	@GetMapping("/Quizabout")
	public String QuizAboutdemo()
	{
		return "Quizabout";
	}
	@GetMapping("/Chart")
	public String Chartdemo()
	{
		
		return "Chart";
	}
	
	@GetMapping("/adminlogin")
	public ModelAndView adminlogindemo()
	{
		ModelAndView mv = new ModelAndView("adminlogin");
		
		return mv;
	}
	
	@GetMapping("/employeelogin")
	public ModelAndView employeeogindemo()
	{
		ModelAndView mv = new ModelAndView("employeelogin");
		
		return mv;
	}
	
	@GetMapping("/employeereg")
	public ModelAndView employeeregdemo()
	{
		ModelAndView mv = new ModelAndView("employeeregistration", "emp",new Employee());
		return mv;
	}
	@GetMapping("/Studentreg")
	public ModelAndView Studentregdemo()
	{
		ModelAndView mv = new ModelAndView("StudentRegistration", "user",new User());
		return mv;
	}
	
	@GetMapping("/adminhome")
	public ModelAndView adminhomedemo()
	{
		ModelAndView mv = new ModelAndView("adminhome");
		
		return mv;
	}
	@GetMapping("/StudentHome")
	public ModelAndView Studenthomedemo()
	{
		ModelAndView mv = new ModelAndView("StudentHome");
		
		return mv;
	}
	
	@GetMapping("/employeehome")
	public ModelAndView employeehomedemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView("employeehome");
		
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		mv.addObject("euname", euname);
		
		return mv;
	}
	@GetMapping("/StudentLogin")
	public ModelAndView Studenthomedemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView("StudentLogin");
		
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		mv.addObject("euname", euname);
		
		return mv;
	}
	
	@GetMapping("/viewallemps")
	public ModelAndView viewallempsdemo()
	{
		ModelAndView mv = new ModelAndView("viewallemployees");
		
		List<Employee> emplist = adminService.viewallemployees();
		mv.addObject("emplist",emplist);
		
		return mv;
	}
	@GetMapping("/viewallstudents")
	public ModelAndView viewallstudentdemo()
	{
		ModelAndView mv = new ModelAndView("viewallstudents");
		
		List<User> studlist = studentService.viewallUsers();
		mv.addObject("studlist",studlist);
		
		return mv;
	}
	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null)
		{
			
			HttpSession session = request.getSession();
			
			session.setAttribute("auname", auname);
			
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg", "Login Failed");
		}
		
		
		return mv;
	}
	
	
	@PostMapping("/checkemplogin")
	public ModelAndView checkemplogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String euname = request.getParameter("euname");
		String epwd = request.getParameter("epwd");
		
		Employee emp = employeeService.checkemplogin(euname, epwd);
		
		if(emp!=null)
		{
			HttpSession session = request.getSession();
			
			session.setAttribute("euname", euname);
			
			mv.setViewName("employeehome");
		}
		else
		{
			mv.setViewName("employeelogin");
			mv.addObject("msg", "Login Failed");
		}
		
		
		return mv;
	}
	@PostMapping("/checkstudlogin")
	public ModelAndView checkstudlogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		
		User user = studentService.checkstudlogin(uname, pwd);
		
		if(user!=null)
		{
			HttpSession session = request.getSession();
			
			session.setAttribute("uname", uname);
			
			mv.setViewName("StudentHome");
		}
		else
		{
			mv.setViewName("StudentLogin");
			mv.addObject("msg", "Login Failed");
		}
		
		
		return mv;
	}
	@PostMapping("/addemployee")
	public String addemployeedemo(@ModelAttribute("emp") Employee employee)
	{
		employeeService.addemployee(employee);
		
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("employeeregistration");
//		mv.addObject("msg", "Employee Registered Successfully");
		
		return "redirect:employeelogin";
	}
	@PostMapping("/addStudent")
	public String addStudentdemo(@ModelAttribute("user") User user)
	{
		studentService.addStudent(user);
		
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("employeeregistration");
//		mv.addObject("msg", "Employee Registered Successfully");
		
		return "redirect:StudentLogin";
	}
	@PostMapping("/addfeedback")
	 public String addfeedbackdemo(@ModelAttribute("fdbk") Feedback feedback)
	 {
	  feedbackService.addFeedback(feedback);
	  
	//  ModelAndView mv = new ModelAndView();
	//  mv.setViewName("employeeregistration");
	//  mv.addObject("msg", "Employee Registered Successfully");
	  
	  return "redirect:StudentLogin";
	 }
	@GetMapping("/viewallfeedbacks")
	 public ModelAndView viewallfeedbacksdemo()
	 {
	  ModelAndView mv = new ModelAndView("viewallfeedbacks");
	  
	  List<Feedback> feedlist = adminService.viewallfeedbacks();
	  mv.addObject("feedlist",feedlist);
	  
	  return mv;
	 }
	@PostMapping("/addUser")
	public ModelAndView addUser(@RequestParam("user_email") String user_email, User user)
	{
		ModelAndView mv=new ModelAndView("success");
		List<User> list=urepo.findByEMAIL(user_email);
		
		if(list.size()!=0)
		{
		mv.addObject("message", "Oops!  There is already a user registered with the email provided.");
		
		}
		else
		{
		urepo.save(user);
		mv.addObject("message","User has been successfully registered.");
		}
		
		return mv;
	}
	@GetMapping("/feedback")
	 public ModelAndView Feedbackdemo()
	 {
	  ModelAndView mv = new ModelAndView("feedback", "fdbk",new Feedback());
	  return mv;
	 }
	
	@GetMapping("/deleteemp")
	public String deleteempdemo(@RequestParam("id") int eid)
	{
		adminService.deleteemployee(eid);
		
		return "redirect:viewallemps";
	}
	
	@GetMapping("/viewemp")
	public ModelAndView viewemp(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		Employee emp =  employeeService.viewemployee(euname);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewemployee");
		mv.addObject("emp",emp);
		
		return mv;
	}

	@GetMapping("/viewuser")
	public ModelAndView viewuser(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String uname = (String) session.getAttribute("uname");
		
		User user =  studentService.viewuser(uname);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewuser");
		mv.addObject("user",user);
		
		return mv;
	}
	@GetMapping("/echangepwd")
	public ModelAndView echangepwd(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("empchangepwd");
		mv.addObject("euname",euname);
		
		return mv;
	}
	
	@PostMapping("/updateemppwd")
	public ModelAndView updateemppwddemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("empchangepwd");
		
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		String eoldpwd = request.getParameter("eopwd");
		String enewpwd = request.getParameter("enpwd");
		
		int n = employeeService.changeemployeepassword(eoldpwd, enewpwd, euname);
		
		if(n > 0)
		{
			
			mv.addObject("msg","Password Updated Successfully");
		}
		else
		{
			mv.addObject("msg","Old Password is Incorrect");
		}
		
		return mv;
	}
	
	@GetMapping("/viewempbyid")
	public ModelAndView viewempbyiddemo(@RequestParam("id") int eid)
	{
		Employee emp = adminService.viewemployeebyid(eid);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("viewempbyid");
		mv.addObject("emp",emp);
		
		return mv;
	}
	
}
