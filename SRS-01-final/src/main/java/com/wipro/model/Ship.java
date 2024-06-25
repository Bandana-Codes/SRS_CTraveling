package com.wipro.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Ship {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String ShipName;
	private String Source;
	private String Destination;
	private int TravelDuration;
	private int SeatingCapacity;
	private int PendingReservationSeats;
	private int WaitingList;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getShipName() {
		return ShipName;
	}
	public void setShipName(String shipName) {
		ShipName = shipName;
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
	public int getTravelDuration() {
		return TravelDuration;
	}
	public void setTravelDuration(int travelDuration) {
		TravelDuration = travelDuration;
	}
	public int getSeatingCapacity() {
		return SeatingCapacity;
	}
	public void setSeatingCapacity(int seatingCapacity) {
		SeatingCapacity = seatingCapacity;
	}
	public int getPendingReservationSeats() {
		return PendingReservationSeats;
	}
	public void setPendingReservationSeats(int pendingReservationSeats) {
		PendingReservationSeats = pendingReservationSeats;
	}
	public int getWaitingList() {
		return WaitingList;
	}
	public void setWaitingList(int waitingList) {
		WaitingList = waitingList;
	}
	@Override
	public String toString() {
		return "Ship [id=" + id + ", ShipName=" + ShipName + ", Source=" + Source + ", Destination=" + Destination
				+ ", TravelDuration=" + TravelDuration + ", SeatingCapacity=" + SeatingCapacity
				+ ", PendingReservationSeats=" + PendingReservationSeats + ", WaitingList=" + WaitingList + "]";
	}
	
	

}
