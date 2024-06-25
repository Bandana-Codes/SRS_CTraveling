package com.wipro.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class ScheduleAdmin {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@OneToOne
	@JoinColumn(name="Route_id")
	private Route route;
	
	@OneToOne
	@JoinColumn(name="Ship_id")
	private Ship ship;
	
	private String travellingday;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Route getRoute() {
		return route;
	}

	public void setRoute(Route route) {
		this.route = route;
	}

	public Ship getShip() {
		return ship;
	}

	public void setShip(Ship ship) {
		this.ship = ship;
	}

	public String getTravellingday() {
		return travellingday;
	}

	public void setTravellingday(String travellingday) {
		this.travellingday = travellingday;
	}

	@Override
	public String toString() {
		return "Schedule [id=" + id + ", route=" + route + ", ship=" + ship + ", travellingday=" + travellingday + "]";
	}
	
	
	
	

}
