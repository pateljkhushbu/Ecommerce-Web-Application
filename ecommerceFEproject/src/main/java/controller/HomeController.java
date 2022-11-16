package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home()
	{
		return "home";
	}
	
	@RequestMapping(value="/aboutus", method=RequestMethod.GET)
	public String abouthome()
	{
		return "aboutus";
	}
	
	@RequestMapping(value="/Sign", method=RequestMethod.GET)
	public String signpage1()
	{
		return "sign-in";
	}
	
	@RequestMapping(value="/contact", method=RequestMethod.GET)
	public String contact()
	{
		return "contact";
	}

	
}