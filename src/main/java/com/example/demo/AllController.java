package com.example.demo;
import java.util.List;

import java.util.ArrayList;
import java.util.Objects;

import javax.swing.text.Document;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class AllController{
	
	@Autowired
	private AdminRepos aRepo;
	@Autowired
	private UserRepos uRepo;
	@Autowired
	private PassRepos pRepo;
	@Autowired
	private LoginService loginservice;


	//Home Page All
	@RequestMapping("/index")
	public String index()
	{
		return "index";
	}

	@RequestMapping("/aboutus")
	public String aboutus()
	{
		return "aboutus";
	}
	
	@RequestMapping("/admin")
	public String admin()
	{
		return "admin";
	}
	@RequestMapping("/signup")
	public String signup()
	{
		return "signup";
	}
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	
	
	  @RequestMapping(value = "/login1",method = RequestMethod.GET)
	  public ModelAndView login1() {
	 ModelAndView mav=new ModelAndView("login");
	  mav.addObject("u", new User());  
	  return mav;
	  }
	  
	  @RequestMapping(value = "/login1",method = RequestMethod.POST) 
	  public String login1(@ModelAttribute("mav") User u) {
	   
		  
	   User  validuser = loginservice.login(u.getMail(),u.getPassword());
	   if(Objects.nonNull(validuser)) 
	   {
	  System.out.println("Login Sucessfull..u..!");
	  return"user"; 
	  } 
	   else
	  {
	  System.out.println("Login Failsed..u..!");
	  return"login";
	  }
	  			}
	 
	
	
	
	//User All Operation
	  
	  @RequestMapping("/user")
	  public String user()
	  {
		  return "user";
	  }
	@RequestMapping("/signup1")
	public String signup1(User u)
	{
		uRepo.save(u);
		
		System.out.println("Signup Sucessfull..u..!");
		return "signupsuccess";
	
	}
	@RequestMapping("/useraboutus")
	public String useraboutus()
	{
		return "useraboutus";
	}
	
	@RequestMapping("/viewstatus")
	public String viewstatus()
	{
		return "viewstatus";
	}
	@RequestMapping("/viewpass")
	public String viewpass()
	{
		return "viewpass";
	}
	
	
	//User pass Add
	@RequestMapping("/newpass")
	public String newpass()
	{
	return "newpass";	
	}
	@RequestMapping("/addpass")
	public String newpass1(Pass p)
	{
		pRepo.save(p);
	
		System.out.println("Registration Sucessfull..u..!");
		return "successpass";
	}
	
	@RequestMapping("/status")
	public String Status()
	{
		return"status";
	}
	
	//Admin All
	@RequestMapping("/adminlogin")
	public String adminlogin()
	{
	return"adminlogin";	
	}
	
	@RequestMapping( value = "/adminlogin1",method = RequestMethod.GET)
	public ModelAndView adminlogin1()
	{
		ModelAndView mav=new ModelAndView("login1");
		mav.addObject("a", new Admin());
		return mav;
	}
	@RequestMapping( value = "/adminlogin1",method = RequestMethod.POST)
	public String adminlogin1(@ModelAttribute("mav")  Admin a)
	{
		Admin validadmin=loginservice.login1(a.getGmail(), a.getPass());
				
		if(Objects.nonNull(validadmin))
		{
			return"admin";
		}
		else
			System.out.println("Login Failed");
			return "index";
		
		
		
		

	}
	
	@RequestMapping("/passrequest")
	public String passrequest()
	{
		return "passrequest";
	}
	@RequestMapping("/passapproval")
	public String passapproval()
	{
		return "passapproval";
	}
	@RequestMapping("/search")
	public String search()
	{
		return "search";
	}
	
	@RequestMapping("/searchpass")
	public String searchpass()
	{
		return "searchpass";
	}
	@RequestMapping("/report")
	public String report()
	{
		return "report";
	}
	@RequestMapping("/viewreport")
	public String viewreport()
	{
		return "viewreport";
	}
}
