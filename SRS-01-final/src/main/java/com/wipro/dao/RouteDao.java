package com.wipro.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.wipro.model.Route;


@Repository
public class RouteDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	
	
	public RouteDao() {
		super();
	}


	@Transactional
	public void updateRoute(Route route) {
		this.hibernateTemplate.update(route);
	}
	
	@Transactional
	public void saveRoute(Route route) {
		this.hibernateTemplate.saveOrUpdate(route);
		
		
	}
	
	
	
	//get single product
	public Route getRoute(int id) {
		return this.hibernateTemplate.get(Route.class,id);
	}
	
	
	//get all routes
	public List<Route> getAllRoutes(){
		
		List<Route> routes=this.hibernateTemplate.loadAll(Route.class);
		return routes;
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	
		//delete student
		@Transactional
		public String deleteRoute(int id) {

			Route route=this.hibernateTemplate.get(Route.class, id);
			this.hibernateTemplate.delete(route);
			return "Route Deleted";
		}


	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
