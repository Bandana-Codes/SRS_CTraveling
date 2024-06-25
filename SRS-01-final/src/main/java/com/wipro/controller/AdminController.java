package com.wipro.controller;


import java.util.List;


import javax.servlet.http.HttpServletRequest;
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

import com.wipro.dao.AdminDao;
import com.wipro.dao.RouteDao;
import com.wipro.model.Admin;
import com.wipro.model.Route;

import com.wipro.service.RouteService;

import oracle.net.aso.r;

@Controller
public class AdminController {
	
	
	@Autowired
	private AdminDao adminDao;
	
	@RequestMapping("/admin")
	public String register() {
		return "admin_login";
	}
	
	
	@RequestMapping( value="/admin_login", method = RequestMethod.POST)
	public  String login( @ModelAttribute Admin admin,HttpServletRequest request, Model model) {

		
		String mail= admin.getMail();
		String passsword=admin.getPassword();
		int count=adminDao.getLoginAdmin(mail, passsword);
		if(count==1) {
		
			System.out.println(request.getContextPath());
			return "admin_home";
			
		}
		
//		return "error";
		model.addAttribute("fail",1);
		return "admin_login";
		
	}
	
	@RequestMapping("/admin_home")
	public String adminHome() {
		return "admin_home";
	}
}
