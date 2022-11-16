package controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CategoryController {
	
	@RequestMapping(value="/viewTelevision",method=RequestMethod.GET)
	public String teleProductPage()
	{
		return "television";
	}

	@RequestMapping(value="/viewMobile",method=RequestMethod.GET)
	public String mobileProductPage()
	{
		return "mobile";
	}

	@RequestMapping(value="/viewlaptop",method=RequestMethod.GET)
	public String laptopProductPage()
	{
		return "laptop";
	}
}
