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

import com.wipro.dao.ShipDao;
import com.wipro.model.Ship;
import com.wipro.service.ShipService;

import net.bytebuddy.implementation.bytecode.ShiftRight;
import oracle.net.aso.r;

@Controller
public class ShipController {
	
	@Autowired
	private ShipService shipService;
	
	@Autowired
	private ShipDao shipDao;
	
	@RequestMapping("/display-ship")
	public String showForm(Model model) {
		
		List<Ship>ships=this.shipService.displayShips();
		
		model.addAttribute("ships", ships);
		return "ship";
	}
	//It shows the add product form
		@RequestMapping("/add-ship")
		public String addShip(Model model) {
			
			
			model.addAttribute("title","Add ship");
			return "add_ship_form";
		}
		
		@RequestMapping(value="/handle-ship", method = RequestMethod.POST)
		public RedirectView handleShip(@ModelAttribute Ship ship,HttpServletRequest request) {

			
			System.out.println(ship);
			
			this.shipService.saveShip(ship);
			
			RedirectView redirectView=new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/"+"display-ship");
			return redirectView;
//			return "view";
		}
		
		//delete a product handler
		@RequestMapping("/delete-ship/{shipId}")
		public RedirectView deleteProduct(@PathVariable("shipId") int shipId,HttpServletRequest request) {
			
			
			this.shipService.deleteShip(shipId);
			
			RedirectView redirectView=new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/"+"display-ship");
			return redirectView;
		}
		
//		update a product handler
			@RequestMapping("/update-ship/{shipId}")
			public String updateProduct(@PathVariable("shipId") int shipId,Model model) {
				
				
				Ship ship =this.shipService.getShip(shipId);
				model.addAttribute("ship",ship);
				
//				RedirectView redirectView=new RedirectView();
//				redirectView.setUrl(request.getContextPath()+"/");
//				return redirectView;
				return "update_ship_form";
			}
			
			


}
