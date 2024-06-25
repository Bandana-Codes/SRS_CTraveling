package com.wipro.controller;


import java.util.List;



import javax.servlet.http.HttpServletRequest;
import javax.swing.event.TableColumnModelListener;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;


import com.wipro.dao.RouteDao;
import com.wipro.dao.UserDao;
import com.wipro.model.Passenger;
import com.wipro.model.Route;
import com.wipro.model.ScheduleAdmin;
import com.wipro.model.Ship;
import com.wipro.model.User;
import com.wipro.service.PassengerService;
import com.wipro.service.RouteService;
import com.wipro.service.ScheduleAdminService;
import com.wipro.service.ShipService;

import oracle.net.aso.r;

@Controller
public class UserController {
	
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private ShipService shipService;

	@Autowired
	private RouteService routeService;

	@Autowired
	private ScheduleAdminService scheduleAdminService;

	@Autowired
	private PassengerService passengerService;
	
	@RequestMapping("/user_login")
	public String register() {
		return "user_login";
	}
	
	
	@RequestMapping("/user_home")
	public String userHome(Model model) {
		
		List<Ship>ships=this.shipService.displayShips();
		
		model.addAttribute("ships", ships);
		return "user_home";
	}
	
	@RequestMapping("/display-routes-for-user")
	public String displayRoutes(Model model) {
		
		List<Route>routes=this.routeService.displayRoutes();
		
		model.addAttribute("routes", routes);
		return "user_route";
	}
	
	@RequestMapping("/display-schedule-for-user")
	public String displaySchedule(Model model) {
		
		List<ScheduleAdmin>scheduleAdmins=this.scheduleAdminService.displayScheduleAdmins();
		
		model.addAttribute("scheduleAdmins", scheduleAdmins);
		return "user_schedule";
	}
	
	@RequestMapping( value="/validate_user", method = RequestMethod.POST)
	public  String login( @ModelAttribute User user,HttpServletRequest request, Model model) {

		
		String mail= user.getEmailID();
		String password=user.getPassword();
		System.out.println(mail);
		System.out.println(password);
		
		int count=userDao.getLoginUser(mail, password);
		if(count==1) {
			
			List<Ship>ships=this.shipService.displayShips();
			
			model.addAttribute("ships", ships);
			System.out.println(request.getContextPath());
			return "user_home";
			
		}
		
//		return "error";
		return "index";
		
	}
	
	@RequestMapping("/display-ships")
	public String showForm(Model model) {
		
		List<Ship>ships=this.shipService.displayShips();
		
		model.addAttribute("ships", ships);
		return "user_ship";
	}
	
	@RequestMapping(value="/signup-user",method = RequestMethod.POST)
	public String signupUser(@ModelAttribute User user) {
		
		
		System.out.println(user);
		this.userDao.saveUser(user);
		
		return "sign_up_successful";
	}
	
	
	@RequestMapping("/book-ticket/{shipId}")
	public String bookTicket(@PathVariable("shipId") int shipId,Model model) {
		
		Ship ship=new Ship();
		ship=shipService.getShip(shipId);
//		System.out.println(ship);
		model.addAttribute("ship", ship);
		return "book_ticket";
		
	}
	
	@RequestMapping(value="/payment-done/{shipId}",method = RequestMethod.POST)
	public String paymentDone(@PathVariable("shipId")int shipId,@RequestParam("PassengerName")String passengername,
			@RequestParam("Gender")String gender,
			@RequestParam("AdhaarNumber")String adhaarnumber,
			@RequestParam("ShipName")String shipname,
			Model model) {

		Passenger passenger=new Passenger();
		passenger.setAdhaarNumber(adhaarnumber);
		passenger.setGender(gender);
		passenger.setPassengerName(passengername);
		passenger.setShipName(shipname);
		
		this.passengerService.savePassenger(passenger);
		Ship ship=new Ship();
		ship=this.shipService.getShip(shipId);
		model.addAttribute("ship", ship);
		return "pay_now";
		
	}
		
	}

	
	
