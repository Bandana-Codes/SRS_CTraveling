package com.wipro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.dao.RouteDao;
import com.wipro.model.Route;

@Service
public class RouteService {

	@Autowired
	public RouteDao routeDao;
	
	
	
	
	public RouteService() {
		super();
	}

	public void updateRoute(Route route) {
		this.routeDao.updateRoute(route);
	}

	public Route getRoute(int id) {
		return this.routeDao.getRoute(id);
	}
	
	
	
	public List<Route> displayRoutes(){
		
		List<Route> routes=this.routeDao.getAllRoutes();
		return routes;
	}
	
	
	
	public String deleteRoute(int id) {
		return this.routeDao.deleteRoute(id);
	}
	
	public void saveRoute(Route route) {
		this.routeDao.saveRoute(route);
	}
	

	
	
}
