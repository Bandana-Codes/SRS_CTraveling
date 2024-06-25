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
import com.wipro.model.Route;
import com.wipro.service.RouteService;

import oracle.net.aso.r;

@Controller
public class RouteController {
	
	@Autowired
	private RouteService routeService;
	
	@Autowired
	private RouteDao routeDao;
	
	@RequestMapping("/display-routes")
	public String showForm(Model model) {
		
		List<Route>routes=this.routeService.displayRoutes();
		
		model.addAttribute("routes", routes);
		return "route";
	}
	//It shows the add product form
		@RequestMapping("/add-route")
		public String addProduct(Model model) {
			
			
			model.addAttribute("title","Add product");
			return "add_route_form";
		}
		
		@RequestMapping(value="/handle-route", method = RequestMethod.POST)
		public RedirectView handleProduct(@ModelAttribute Route route,HttpServletRequest request) {
			

			System.out.println(route);
			
			this.routeDao.saveRoute(route);
			
			RedirectView redirectView=new RedirectView();
			System.out.println(request.getContextPath());
			redirectView.setUrl(request.getContextPath()+"/"+"display-routes");
			return redirectView;
//			return "view";
		}
		
		//delete a product handler
		@RequestMapping("/delete-route/{routeId}")
		public RedirectView deleteProduct(@PathVariable("routeId") int routeId,HttpServletRequest request) {
			
			
			this.routeService.deleteRoute(routeId);
			
			RedirectView redirectView=new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/"+"display-routes");
			return redirectView;
		}
		
//		update a product handler
			@RequestMapping("/update-route/{routeId}")
			public String updateProduct(@PathVariable("routeId") int routeId,Model model) {
				
				
				Route route =this.routeService.getRoute(routeId);
				model.addAttribute("route",route);
				
//				RedirectView redirectView=new RedirectView();
//				redirectView.setUrl(request.getContextPath()+"/");
//				return redirectView;
				return "update_form";
			}
			
			@RequestMapping(value="/update-route-data", method = RequestMethod.POST)
			public RedirectView updateRoute(@RequestParam("id") int id
					,@RequestParam("source") String source,
					@RequestParam("destination") String Destination,
					@RequestParam("duration") int Duration,
					@RequestParam("Costperkm")int Costperkm,
					@RequestParam("Distance")int Distance,HttpServletRequest request,Model model) {
//				
				Route route =new Route();
				route.setId(id);
				route.setSource(source);
				route.setDestination(Destination);
				route.setDuration(Duration);
				route.setCostperkm(Costperkm);
				route.setDistance(Distance);
//				
//				
				System.out.println(route);
////				model.addAttribute("route",route);
				this.routeService.updateRoute(route);
				RedirectView redirectView=new RedirectView();
				redirectView.setUrl(request.getContextPath()+"/"+"display-routes");
				return redirectView;
////				return "view";
			}
			


}
