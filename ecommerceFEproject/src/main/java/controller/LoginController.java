package controller;



import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Users;
import model.UsersDAO;

@Controller
public class LoginController {
	
	
	@RequestMapping(value="/sign-up",method=RequestMethod.POST)
	public String addUsers(@Valid @ModelAttribute("user1")Users u,BindingResult result)
	{
		UsersDAO ud = new UsersDAO();
		ud.insertUsers(u);
		return "listProduct";
	}
	
	@RequestMapping(value="/signin", method=RequestMethod.POST)
	public String signin()
	{
		return "signin-Process";
	}
	
	@RequestMapping(value="/signinad", method=RequestMethod.GET)
	public String signinad()
	{
		return "signin-ad";
	}
	
	@RequestMapping(value="/admin", method=RequestMethod.POST)
	public String adminproc()
	{
		return "admin-Process";
	}
	
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup()
	{
		return "SignUp";
	}

	
	
	

}