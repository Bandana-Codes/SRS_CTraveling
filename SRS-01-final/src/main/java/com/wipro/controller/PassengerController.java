package com.wipro.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.wipro.dao.RouteDao;
import com.wipro.model.Passenger;
import com.wipro.model.Route;
import com.wipro.service.PassengerService;
import com.wipro.service.RouteService;

import oracle.net.aso.r;

@Controller
public class PassengerController {
	
	@Autowired
	private PassengerService passengerService;
	
	
	@RequestMapping("/display-passenger")
	public String showForm(Model model) {
		
		List <Passenger>  passengers= passengerService.displayPassengers();
		model.addAttribute("passengers", passengers);
		return "passenger";
	}
	
	

}
