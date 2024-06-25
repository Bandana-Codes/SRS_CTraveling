package com.wipro.controller;


import java.util.List;



import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.ScheduledAnnotationBeanPostProcessor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.wipro.dao.ScheduleAdminDao;
import com.wipro.dao.ShipDao;
import com.wipro.model.Route;
import com.wipro.model.ScheduleAdmin;
import com.wipro.model.Ship;
import com.wipro.service.RouteService;
import com.wipro.service.ScheduleAdminService;
import com.wipro.service.ShipService;

import net.bytebuddy.implementation.bytecode.ShiftRight;
import oracle.net.aso.r;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleAdminService scheduleService;
	
	@Autowired
	private RouteService routeService;
	
	@Autowired
	private ShipService shipService;
	
	@Autowired
	private ScheduleAdminDao  scheduleDao;
	
	@RequestMapping("/display-schedule")
	public String showForm(Model model) {
//	public void showForm(Model model) {
		
		List<ScheduleAdmin>scheduleAdmins=this.scheduleService.displayScheduleAdmins();
		
		model.addAttribute("scheduleAdmins", scheduleAdmins);
		
		System.out.println(scheduleAdmins);
		return "schedule";
	}
////	//It shows the add schedule form
		@RequestMapping("/add-schedule")
		public String addScheduleAdmin(Model model) {
			
			
			model.addAttribute("title","Add Schedule Details");
			
			List<Route>routes=this.routeService.displayRoutes();
			model.addAttribute("routes",routes);
			
			List<Ship>ships=this.shipService.displayShips();
			model.addAttribute("ships",ships);
			
			return "add_schedule_form";
		}
////		
		@RequestMapping(value="/handle-schedule", method = RequestMethod.POST)
//		public RedirectView handleShip(@ModelAttribute ScheduleAdmin scheduleAdmin,HttpServletRequest request) {
		public RedirectView handleSchedule(@RequestParam("route") int routeId,
				@RequestParam("ship") int shipId,
				@RequestParam("travellingday") String travellingday,HttpServletRequest request) {
////			
////			
				ScheduleAdmin scheduleAdmin=new ScheduleAdmin();
////			
				Route route=new Route();
				route=routeService.getRoute(routeId);
				scheduleAdmin.setRoute(route);
////			
				Ship ship= new Ship();
				ship=shipService.getShip(shipId);
				scheduleAdmin.setShip(ship);
////			
				scheduleAdmin.setTravellingday(travellingday);
////			
//////			System.out.println(travellingday);
////			System.out.println(scheduleAdmin);
////			
				this.scheduleService.saveScheduleAdmin(scheduleAdmin);
//			
			RedirectView redirectView=new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/"+"display-schedule");
			return redirectView;
////			return "view";
		}
////		
//		//delete a product handler
		@RequestMapping("/delete-schedule/{scheduleId}")
		public RedirectView deleteProduct(@PathVariable("scheduleId") int scheduleId,HttpServletRequest request) {
			
			
			this.scheduleService.deleteScheduleAdmin(scheduleId);
			
			RedirectView redirectView=new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/"+"display-schedule");
			return redirectView;
		}
////		
////		update a product handler
			@RequestMapping("/update-schedule/{scheduleId}")
			public String updateProduct(@PathVariable("scheduleId") int scheduleId,Model model) {
//			public void updateProduct(HttpServletRequest request) {
			
				
				
				ScheduleAdmin scheduleAdmin =this.scheduleService.getScheduleAdmin(scheduleId);
				model.addAttribute("scheduleAdmin",scheduleAdmin);
				
				List<Route>routes=this.routeService.displayRoutes();
				model.addAttribute("routes",routes);
				
				List<Ship>ships=this.shipService.displayShips();
				model.addAttribute("ships",ships);
				
//				RedirectView redirectView=new RedirectView();
//				redirectView.setUrl(request.getContextPath()+"/");
//				return redirectView;
				return "update_schedule_form";
			}
////			
////		
			
			@RequestMapping(value="/update-data-schedule", method = RequestMethod.POST)
//			public RedirectView handleShip(@ModelAttribute ScheduleAdmin scheduleAdmin,HttpServletRequest request) {
			public RedirectView updateSchedule(@RequestParam("id") int id,
					@RequestParam("route") int routeId,
					@RequestParam("ship") int shipId,
					@RequestParam("travellingday") String travellingday,HttpServletRequest request) {
////				
////				
					ScheduleAdmin scheduleAdmin=scheduleService.getScheduleAdmin(id);
////				
					Route route=new Route();
					route=routeService.getRoute(routeId);
					scheduleAdmin.setRoute(route);
////				
					Ship ship= new Ship();
					ship=shipService.getShip(shipId);
					scheduleAdmin.setShip(ship);
////				
					scheduleAdmin.setTravellingday(travellingday);
					
					
////				
				System.out.println(id);
				System.out.println(travellingday);
				System.out.println(routeId);
				System.out.println(shipId);
////				
					this.scheduleService.updateScheduleAdmin(scheduleAdmin);
					System.out.println("Done");
				RedirectView redirectView=new RedirectView();
				redirectView.setUrl(request.getContextPath()+"/"+"display-schedule");
				return redirectView;
////				return "view";
			}


}
