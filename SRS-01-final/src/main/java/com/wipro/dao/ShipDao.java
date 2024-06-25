package com.wipro.dao;

import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;


import com.wipro.model.Ship;


@Repository
public class ShipDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	
	
	@Transactional
	public void saveShip(Ship ship) {
		this.hibernateTemplate.saveOrUpdate(ship);
		
		
	}
	
	
	
	//get single product
	public Ship getShip(int id) {
		return this.hibernateTemplate.get(Ship.class,id);
	}
	
	
	//get all routes
	public List<Ship> getAllShips(){
		
		List<Ship> ships=this.hibernateTemplate.loadAll(Ship.class);
		return ships;
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	
		//delete student
		@Transactional
		public String deleteShip(int id) {

			Ship route=this.hibernateTemplate.get(Ship.class, id);
			this.hibernateTemplate.delete(route);
			return "Route Deleted";
		}


	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
