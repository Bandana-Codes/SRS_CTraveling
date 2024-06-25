package com.wipro.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Route {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String Source;
	
	private String Destination;
	
	private int Duration;
	
	private int Costperkm;
	
	private int Distance;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSource() {
		return Source;
	}

	public void setSource(String source) {
		Source = source;
	}

	public String getDestination() {
		return Destination;
	}

	public void setDestination(String destination) {
		Destination = destination;
	}

	public int getDuration() {
		return Duration;
	}

	public void setDuration(int duration) {
		Duration = duration;
	}

	public int getCostperkm() {
		return Costperkm;
	}

	public void setCostperkm(int costperkm) {
		Costperkm = costperkm;
	}
	
	

	public int getDistance() {
		return Distance;
	}

	public void setDistance(int distance) {
		Distance = distance;
	}

	@Override
	public String toString() {
		return "Route [id=" + id + ", Source=" + Source + ", Destination=" + Destination + ", Duration=" + Duration
				+ ", Costperkm=" + Costperkm + ", Distance=" + Distance + "]";
	}

	
		

	
	

}
