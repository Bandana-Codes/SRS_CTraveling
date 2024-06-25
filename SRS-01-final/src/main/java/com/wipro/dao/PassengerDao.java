package com.wipro.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.wipro.model.Passenger;
import com.wipro.model.Route;


@Repository
public class PassengerDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public PassengerDao() {
		super();
	}


	
	//get all routes
	public List<Passenger> getAllPassengers(){
		
		List<Passenger> passengers=this.hibernateTemplate.loadAll(Passenger.class);
		return passengers;
	}
	
	//save the data
	@Transactional
	public void savePassenger(Passenger passenger) {
		this.hibernateTemplate.saveOrUpdate(passenger);
		
		
	}
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
