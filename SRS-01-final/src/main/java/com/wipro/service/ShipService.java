package com.wipro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.dao.RouteDao;
import com.wipro.dao.ShipDao;
import com.wipro.model.Route;
import com.wipro.model.Ship;

@Service
public class ShipService {

	@Autowired
	public ShipDao shipDao;
	
	
	public Ship getShip(int id) {
		return this.shipDao.getShip(id);
	}
	
	
	
	public List<Ship> displayShips(){
		
		List<Ship> ships=this.shipDao.getAllShips();
		return ships;
	}
	
	
	
	public String deleteShip(int id) {
		return this.shipDao.deleteShip(id);
	}
	
	public void saveShip(Ship ship) {
		this.shipDao.saveShip(ship);
	}
	

	
	
}
