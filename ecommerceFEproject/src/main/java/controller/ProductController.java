package controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import model.ProductDAO;
import model.Product;

@Controller
public class ProductController {
	
	

	@RequestMapping(value="/addprodpage",method=RequestMethod.GET)
	public String addProductPage()
	{
		return "manageProduct";
	}
	
	@RequestMapping(value="/viewprodpage",method=RequestMethod.GET)
	public String viewProductPage()
	{
		return "listProduct";
	}

	@RequestMapping(value="/updateProcess",method=RequestMethod.POST)
	public String uppProductPage()
	{
		return "update-process";
	}

	@RequestMapping(value="/manageProduct",method=RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product1")Product p,BindingResult result)
	{
		ProductDAO pd = new ProductDAO();
		pd.insertProduct(p);
			return "success";
	}
	
	
	@RequestMapping(value="/listup",method=RequestMethod.GET)
	public String updateProductPage()
	{
		return "update";
	}

	@RequestMapping(value="/listdp",method=RequestMethod.GET)
	public String deleteProductPage()
	{
		return "delete";
	}
	

	
	
	

	
}
