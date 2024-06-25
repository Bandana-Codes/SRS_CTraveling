package com.wipro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.dao.PassengerDao;
import com.wipro.dao.RouteDao;
import com.wipro.model.Passenger;
import com.wipro.model.Route;

@Service
public class PassengerService {

	@Autowired
	public PassengerDao passengerDao;
	
	
	public PassengerService() {
		super();
	}


	public List<Passenger> displayPassengers(){
		
		return passengerDao.getAllPassengers();
	}
	
	public void savePassenger(Passenger passenger) {
		this.passengerDao.savePassenger(passenger);
	}
	
}
