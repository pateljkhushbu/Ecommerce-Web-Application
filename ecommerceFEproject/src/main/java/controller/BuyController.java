package controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Card;
import model.CardDAO;
import model.Details;
import model.DetailsDAO;


@Controller
public class BuyController {

		@RequestMapping(value="/buyProcess",method=RequestMethod.POST)
		public String buyProductPage()
		{
			return "buy-process";
		}
		
		@RequestMapping(value="/address",method=RequestMethod.POST)
		public String address()
		{
			return "address";
		}
		
		@RequestMapping(value="/manageDetails",method=RequestMethod.POST)
		public String addDetails(@Valid @ModelAttribute("detail1")Details d,BindingResult result)
		{
			DetailsDAO dd = new DetailsDAO();
			dd.insertDetails(d);
				return "carddetails";
		}
		
		@RequestMapping(value="/manageCard",method=RequestMethod.POST)
		public String addCard(@Valid @ModelAttribute("card1")Card c,BindingResult result)
		{
			CardDAO dd = new CardDAO();
			dd.insertcard(c);
				return "buysuccess";
		}


	}


